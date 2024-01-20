// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String movieQuery) getSearch,
    required TResult Function() valueNullInTextField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String movieQuery)? getSearch,
    TResult? Function()? valueNullInTextField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String movieQuery)? getSearch,
    TResult Function()? valueNullInTextField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_GetSearch value) getSearch,
    required TResult Function(_ValueNullInTextField value) valueNullInTextField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_GetSearch value)? getSearch,
    TResult? Function(_ValueNullInTextField value)? valueNullInTextField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_GetSearch value)? getSearch,
    TResult Function(_ValueNullInTextField value)? valueNullInTextField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IntializeImplCopyWith<$Res> {
  factory _$$IntializeImplCopyWith(
          _$IntializeImpl value, $Res Function(_$IntializeImpl) then) =
      __$$IntializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IntializeImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$IntializeImpl>
    implements _$$IntializeImplCopyWith<$Res> {
  __$$IntializeImplCopyWithImpl(
      _$IntializeImpl _value, $Res Function(_$IntializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IntializeImpl implements _Intialize {
  const _$IntializeImpl();

  @override
  String toString() {
    return 'SearchEvent.intialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IntializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String movieQuery) getSearch,
    required TResult Function() valueNullInTextField,
  }) {
    return intialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String movieQuery)? getSearch,
    TResult? Function()? valueNullInTextField,
  }) {
    return intialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String movieQuery)? getSearch,
    TResult Function()? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_GetSearch value) getSearch,
    required TResult Function(_ValueNullInTextField value) valueNullInTextField,
  }) {
    return intialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_GetSearch value)? getSearch,
    TResult? Function(_ValueNullInTextField value)? valueNullInTextField,
  }) {
    return intialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_GetSearch value)? getSearch,
    TResult Function(_ValueNullInTextField value)? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (intialize != null) {
      return intialize(this);
    }
    return orElse();
  }
}

abstract class _Intialize implements SearchEvent {
  const factory _Intialize() = _$IntializeImpl;
}

/// @nodoc
abstract class _$$GetSearchImplCopyWith<$Res> {
  factory _$$GetSearchImplCopyWith(
          _$GetSearchImpl value, $Res Function(_$GetSearchImpl) then) =
      __$$GetSearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String movieQuery});
}

/// @nodoc
class __$$GetSearchImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetSearchImpl>
    implements _$$GetSearchImplCopyWith<$Res> {
  __$$GetSearchImplCopyWithImpl(
      _$GetSearchImpl _value, $Res Function(_$GetSearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieQuery = null,
  }) {
    return _then(_$GetSearchImpl(
      movieQuery: null == movieQuery
          ? _value.movieQuery
          : movieQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchImpl implements _GetSearch {
  const _$GetSearchImpl({required this.movieQuery});

  @override
  final String movieQuery;

  @override
  String toString() {
    return 'SearchEvent.getSearch(movieQuery: $movieQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchImpl &&
            (identical(other.movieQuery, movieQuery) ||
                other.movieQuery == movieQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchImplCopyWith<_$GetSearchImpl> get copyWith =>
      __$$GetSearchImplCopyWithImpl<_$GetSearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String movieQuery) getSearch,
    required TResult Function() valueNullInTextField,
  }) {
    return getSearch(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String movieQuery)? getSearch,
    TResult? Function()? valueNullInTextField,
  }) {
    return getSearch?.call(movieQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String movieQuery)? getSearch,
    TResult Function()? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch(movieQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_GetSearch value) getSearch,
    required TResult Function(_ValueNullInTextField value) valueNullInTextField,
  }) {
    return getSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_GetSearch value)? getSearch,
    TResult? Function(_ValueNullInTextField value)? valueNullInTextField,
  }) {
    return getSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_GetSearch value)? getSearch,
    TResult Function(_ValueNullInTextField value)? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch(this);
    }
    return orElse();
  }
}

abstract class _GetSearch implements SearchEvent {
  const factory _GetSearch({required final String movieQuery}) =
      _$GetSearchImpl;

  String get movieQuery;
  @JsonKey(ignore: true)
  _$$GetSearchImplCopyWith<_$GetSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueNullInTextFieldImplCopyWith<$Res> {
  factory _$$ValueNullInTextFieldImplCopyWith(_$ValueNullInTextFieldImpl value,
          $Res Function(_$ValueNullInTextFieldImpl) then) =
      __$$ValueNullInTextFieldImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValueNullInTextFieldImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ValueNullInTextFieldImpl>
    implements _$$ValueNullInTextFieldImplCopyWith<$Res> {
  __$$ValueNullInTextFieldImplCopyWithImpl(_$ValueNullInTextFieldImpl _value,
      $Res Function(_$ValueNullInTextFieldImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ValueNullInTextFieldImpl implements _ValueNullInTextField {
  const _$ValueNullInTextFieldImpl();

  @override
  String toString() {
    return 'SearchEvent.valueNullInTextField()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueNullInTextFieldImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() intialize,
    required TResult Function(String movieQuery) getSearch,
    required TResult Function() valueNullInTextField,
  }) {
    return valueNullInTextField();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? intialize,
    TResult? Function(String movieQuery)? getSearch,
    TResult? Function()? valueNullInTextField,
  }) {
    return valueNullInTextField?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? intialize,
    TResult Function(String movieQuery)? getSearch,
    TResult Function()? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (valueNullInTextField != null) {
      return valueNullInTextField();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Intialize value) intialize,
    required TResult Function(_GetSearch value) getSearch,
    required TResult Function(_ValueNullInTextField value) valueNullInTextField,
  }) {
    return valueNullInTextField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Intialize value)? intialize,
    TResult? Function(_GetSearch value)? getSearch,
    TResult? Function(_ValueNullInTextField value)? valueNullInTextField,
  }) {
    return valueNullInTextField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Intialize value)? intialize,
    TResult Function(_GetSearch value)? getSearch,
    TResult Function(_ValueNullInTextField value)? valueNullInTextField,
    required TResult orElse(),
  }) {
    if (valueNullInTextField != null) {
      return valueNullInTextField(this);
    }
    return orElse();
  }
}

abstract class _ValueNullInTextField implements SearchEvent {
  const factory _ValueNullInTextField() = _$ValueNullInTextFieldImpl;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<Downloads> get idleList => throw _privateConstructorUsedError;
  List<SearchResultData> get searchResultList =>
      throw _privateConstructorUsedError;
  bool? get onSumbmitted => throw _privateConstructorUsedError;
  bool? get searchIsEmpty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Downloads> idleList,
      List<SearchResultData> searchResultList,
      bool? onSumbmitted,
      bool? searchIsEmpty});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? idleList = null,
    Object? searchResultList = null,
    Object? onSumbmitted = freezed,
    Object? searchIsEmpty = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      idleList: null == idleList
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      searchResultList: null == searchResultList
          ? _value.searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      onSumbmitted: freezed == onSumbmitted
          ? _value.onSumbmitted
          : onSumbmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchIsEmpty: freezed == searchIsEmpty
          ? _value.searchIsEmpty
          : searchIsEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      List<Downloads> idleList,
      List<SearchResultData> searchResultList,
      bool? onSumbmitted,
      bool? searchIsEmpty});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? idleList = null,
    Object? searchResultList = null,
    Object? onSumbmitted = freezed,
    Object? searchIsEmpty = freezed,
  }) {
    return _then(_$SearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      idleList: null == idleList
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      searchResultList: null == searchResultList
          ? _value._searchResultList
          : searchResultList // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      onSumbmitted: freezed == onSumbmitted
          ? _value.onSumbmitted
          : onSumbmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchIsEmpty: freezed == searchIsEmpty
          ? _value.searchIsEmpty
          : searchIsEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {required this.isLoading,
      required this.isError,
      required final List<Downloads> idleList,
      required final List<SearchResultData> searchResultList,
      this.onSumbmitted,
      this.searchIsEmpty})
      : _idleList = idleList,
        _searchResultList = searchResultList;

  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<Downloads> _idleList;
  @override
  List<Downloads> get idleList {
    if (_idleList is EqualUnmodifiableListView) return _idleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleList);
  }

  final List<SearchResultData> _searchResultList;
  @override
  List<SearchResultData> get searchResultList {
    if (_searchResultList is EqualUnmodifiableListView)
      return _searchResultList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultList);
  }

  @override
  final bool? onSumbmitted;
  @override
  final bool? searchIsEmpty;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isError: $isError, idleList: $idleList, searchResultList: $searchResultList, onSumbmitted: $onSumbmitted, searchIsEmpty: $searchIsEmpty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality().equals(other._idleList, _idleList) &&
            const DeepCollectionEquality()
                .equals(other._searchResultList, _searchResultList) &&
            (identical(other.onSumbmitted, onSumbmitted) ||
                other.onSumbmitted == onSumbmitted) &&
            (identical(other.searchIsEmpty, searchIsEmpty) ||
                other.searchIsEmpty == searchIsEmpty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_idleList),
      const DeepCollectionEquality().hash(_searchResultList),
      onSumbmitted,
      searchIsEmpty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final bool isError,
      required final List<Downloads> idleList,
      required final List<SearchResultData> searchResultList,
      final bool? onSumbmitted,
      final bool? searchIsEmpty}) = _$SearchStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<Downloads> get idleList;
  @override
  List<SearchResultData> get searchResultList;
  @override
  bool? get onSumbmitted;
  @override
  bool? get searchIsEmpty;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
