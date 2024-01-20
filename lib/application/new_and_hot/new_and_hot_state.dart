part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState(
      {required bool isLoading,
      required bool isError,
      required List<NewandHotResult> list,
      required List<Downloads> downloadlist}) = _NewAndHotState;

  factory NewAndHotState.initial() {
    return const NewAndHotState(
        isLoading: false, isError: true, list: [], downloadlist: []);
  }
}
