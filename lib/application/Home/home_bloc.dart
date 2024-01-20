import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Home/home_top_rated_model/home_top_rated_model.dart';
import 'package:netflix/Domain/Home/home_tv_model/home_tv_model.dart';
import 'package:netflix/Domain/Home/i_home_repo.dart';
import 'package:uuid/uuid.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepo repo;

  HomeBloc(this.repo) : super(HomeState.initial()) {
    on<_firstEvent>(
      (event, emit) async {
        log('Getting HomeScreen');
        String generatedId = const Uuid().v4();
        // print(generatedId);
        emit(
          state.copyWith(
            id: generatedId,
            isLoading: true,
            isError: false,
            top10: [],
            southIndianCinema: [],
            tenseDrama: [],
            trndingNow: [],
            releasedInPastYear: [],
          ),
        );

        final apiresult = await repo.getTopRated();
        final apiresult2 = await repo.getTv();

        print('Your tv Result is from bloc $apiresult2');

        final _state = apiresult.fold(
          (failure) {
            // print('Failure is $failure');
            final generatedId = const Uuid().v4();
            return state.copyWith(
              id: generatedId,
              isLoading: false,
              isError: true,
              top10: [],
              southIndianCinema: [],
              tenseDrama: [],
              trndingNow: [],
              releasedInPastYear: [],
            );
          },
          (sucess) {
            final generatedId = const Uuid().v4();
            print('sucess id is $generatedId');

            List<HomeTopRatedResult> southIndianCinema =
                List.from(sucess.results)..shuffle();
            List<HomeTopRatedResult> tenseDrama = List.from(sucess.results)
              ..shuffle();
            List<HomeTopRatedResult> trendingNow = List.from(sucess.results)
              ..shuffle();
            List<HomeTopRatedResult> releasedInPastYear =
                List.from(sucess.results)..shuffle();

            return state.copyWith(
              id: generatedId,
              isLoading: false,
              isError: false,
              top10: state.top10,
              southIndianCinema: southIndianCinema,
              tenseDrama: tenseDrama,
              trndingNow: trendingNow,
              releasedInPastYear: releasedInPastYear,
            );
          },
        );
        emit(_state);
        final _state2 = apiresult2.fold(
          (failure) {
            final generatedId = const Uuid().v4();
            return state.copyWith(
              id: generatedId,
              isLoading: false,
              isError: true,
              top10: [],
              southIndianCinema: state.southIndianCinema,
              tenseDrama: state.tenseDrama,
              trndingNow: state.trndingNow,
              releasedInPastYear: state.releasedInPastYear,
            );
          },
          (sucess) {
            final generatedId = const Uuid().v4();
            return state.copyWith(
              id: generatedId,
              isLoading: false,
              isError: false,
              top10: sucess.results,
              southIndianCinema: state.southIndianCinema,
              tenseDrama: state.tenseDrama,
              trndingNow: state.trndingNow,
              releasedInPastYear: state.releasedInPastYear,
            );
          },
        );

        emit(_state2);
      },
    );
  }
}
