part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required bool isLoading,
      required bool isError,
      required List<Downloads> idleList,
      required List<SearchResultData> searchResultList,
      bool? onSumbmitted,
      bool? searchIsEmpty}) = _SearchState;

  factory SearchState.initial() {
    return const SearchState(
      isLoading: false,
      searchResultList: [],
      idleList: [],
      isError: false,
    );
  }

  factory SearchState.loading() {
    return SearchState(
      isLoading: true,
      isError: false,
      idleList: [],
      searchResultList: [],
    );
  }
  factory SearchState.valueNullInTextFieldState() {
    return const SearchState(
        isLoading: false, isError: false, idleList: [], searchResultList: []);
  }
}
