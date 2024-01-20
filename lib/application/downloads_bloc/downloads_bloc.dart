import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/downloads/i_downloads_repo.dart';

import '../../Domain/core/failures/main_failure.dart';
import '../../Domain/downloads/download_models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepos;
  DownloadsBloc(
    this._downloadsRepos,
  ) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadFailureOrSucessOption: const None(),
          ),
        );
        // Future.delayed(const Duration(milliseconds: 10));
        final Either<MainFailure, List<Downloads>> downloadOptions =
            await _downloadsRepos.getDownloadsImage();

        if (state.download.isNotEmpty) {
          emit(
            state.copyWith(
              isLoading: false,
              download: [],
              downloadFailureOrSucessOption: Some(
                right(state.download),
              ),
            ),
          );
        }

        final _state = downloadOptions.fold(
          (failure) => state.copyWith(
            download: [],
            isLoading: true,
            downloadFailureOrSucessOption: Some(
              left(failure),
            ),
          ),
          (sucess) {
            print("sucess printed${sucess.toString()}");
            return state.copyWith(
              download: sucess,
              isLoading: false,
              downloadFailureOrSucessOption: Some(
                right(sucess),
              ),
            );
          },
        );
        emit(_state);
      },
    );

    // ignore: invalid_use_of_visible_for_testing_member
  }
}
