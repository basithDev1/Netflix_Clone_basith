part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> download,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadFailureOrSucessOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      downloadFailureOrSucessOption: None(),
      download: [],
    );
  }
}
