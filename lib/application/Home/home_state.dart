part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required final String id,
    required final bool isLoading,
    required final bool isError,
    required List<HomeTopRatedResult> southIndianCinema,
    required List<HomeTopRatedResult> releasedInPastYear,
    required List<HomeTopRatedResult> tenseDrama,
    required List<HomeTopRatedResult> trndingNow,
    required List<HomeTvResult> top10,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      isLoading: false,
      isError: false,
      southIndianCinema: [],
      releasedInPastYear: [],
      tenseDrama: [],
      trndingNow: [],
      top10: [],
      id: '',
    );
  }
}
