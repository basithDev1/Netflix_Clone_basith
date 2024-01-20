import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/downloads/download_models/downloads.dart';
import 'package:netflix/Domain/downloads/i_downloads_repo.dart';
import 'package:netflix/Domain/search/i_search_repo.dart';
import 'package:netflix/Domain/search/search_models/searchresponse/searchresponse.dart';

import '../../Domain/core/failures/main_failure.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadRepo;
  final ISearchRepo searchRepo;
  SearchBloc(this.downloadRepo, this.searchRepo)
      : super(SearchState.initial()) {
    on<_Intialize>(
      (event, emit) async {
        //here we will get the idleList
        if (state.idleList.isNotEmpty) {
          emit(
            SearchState(
              isLoading: false,
              isError: false,
              idleList: state.idleList,
              searchResultList: [],
            ),
          );
          return;
        }

        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
            idleList: [],
            searchResultList: [],
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadOptions =
            await downloadRepo.getDownloadsImage();

        final _state = downloadOptions.fold(
          (failure) {
            return state.copyWith(
              isLoading: false,
              isError: true,
              idleList: [],
              searchResultList: [],
            );
          },
          (sucess) {
            return SearchState(
              isLoading: false,
              isError: false,
              idleList: sucess,
              searchResultList: [],
            );
          },
        );

        emit(_state);
      },
    );

    on<_GetSearch>(
      (event, emit) async {
        // emit(
        //   state.copyWith(
        //     isLoading: true,
        //     isError: false,
        //     idleList: [],
        //     searchResultList: [],
        //   ),
        // );

        emit(SearchState.loading());

        final Either<MainFailure, Searchresponse> result =
            await searchRepo.getSearch(movieQuery: event.movieQuery);
        print("searching For${event.movieQuery}");

        final _state = result.fold(
          (failure) {
            return const SearchState(
              isLoading: false,
              isError: true,
              idleList: [],
              searchResultList: [],
            );
          },
          (sucess) {
            return SearchState(
                isLoading: false,
                isError: false,
                idleList: [],
                searchResultList: sucess.results,
                searchIsEmpty: sucess.results.isEmpty ? true : false);
          },
        );
        emit(_state);
      },
    );

    on<_ValueNullInTextField>((event, emit) {
      emit(SearchState.valueNullInTextFieldState());
    });
  }
}
