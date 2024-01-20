part of 'fast_laughf_bloc.dart';

@freezed
class FastLaughfState with _$FastLaughfState {
  const factory FastLaughfState({
    required bool isLoading,
    required bool isError,
    required List<Downloads> downloadsList,
    required List<Category> videoList,
  }) = _FastLaughfState;

  //  const factory FastLaughfState(){

  //   required bool isLoading,
  //     required bool isError,
  //     required List<Downloads> downloadList,
  //     required List<Category> videoList,
  //     bool? searchIsEmpty

  // }=_FastLaughfState;

  factory FastLaughfState.initial() {
    return FastLaughfState(
      isLoading: false,
      downloadsList: [],
      videoList: [],
      isError: false,
    );
  }
}
