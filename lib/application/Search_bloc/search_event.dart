part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.intialize() = _Intialize;

  const factory SearchEvent.getSearch({
    required String movieQuery,
  }) = _GetSearch;

  const factory SearchEvent.valueNullInTextField() = _ValueNullInTextField;
}
