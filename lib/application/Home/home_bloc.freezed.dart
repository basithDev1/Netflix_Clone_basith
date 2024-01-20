// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_firstEvent value) firstEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_firstEvent value)? firstEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_firstEvent value)? firstEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$firstEventImplCopyWith<$Res> {
  factory _$$firstEventImplCopyWith(
          _$firstEventImpl value, $Res Function(_$firstEventImpl) then) =
      __$$firstEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$firstEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$firstEventImpl>
    implements _$$firstEventImplCopyWith<$Res> {
  __$$firstEventImplCopyWithImpl(
      _$firstEventImpl _value, $Res Function(_$firstEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$firstEventImpl implements _firstEvent {
  const _$firstEventImpl();

  @override
  String toString() {
    return 'HomeEvent.firstEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$firstEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firstEvent,
  }) {
    return firstEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? firstEvent,
  }) {
    return firstEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firstEvent,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_firstEvent value) firstEvent,
  }) {
    return firstEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_firstEvent value)? firstEvent,
  }) {
    return firstEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_firstEvent value)? firstEvent,
    required TResult orElse(),
  }) {
    if (firstEvent != null) {
      return firstEvent(this);
    }
    return orElse();
  }
}

abstract class _firstEvent implements HomeEvent {
  const factory _firstEvent() = _$firstEventImpl;
}

/// @nodoc
mixin _$HomeState {
  String get id => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<HomeTopRatedResult> get southIndianCinema =>
      throw _privateConstructorUsedError;
  List<HomeTopRatedResult> get releasedInPastYear =>
      throw _privateConstructorUsedError;
  List<HomeTopRatedResult> get tenseDrama => throw _privateConstructorUsedError;
  List<HomeTopRatedResult> get trndingNow => throw _privateConstructorUsedError;
  List<HomeTvResult> get top10 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {String id,
      bool isLoading,
      bool isError,
      List<HomeTopRatedResult> southIndianCinema,
      List<HomeTopRatedResult> releasedInPastYear,
      List<HomeTopRatedResult> tenseDrama,
      List<HomeTopRatedResult> trndingNow,
      List<HomeTvResult> top10});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? southIndianCinema = null,
    Object? releasedInPastYear = null,
    Object? tenseDrama = null,
    Object? trndingNow = null,
    Object? top10 = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      southIndianCinema: null == southIndianCinema
          ? _value.southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      releasedInPastYear: null == releasedInPastYear
          ? _value.releasedInPastYear
          : releasedInPastYear // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      tenseDrama: null == tenseDrama
          ? _value.tenseDrama
          : tenseDrama // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      trndingNow: null == trndingNow
          ? _value.trndingNow
          : trndingNow // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      top10: null == top10
          ? _value.top10
          : top10 // ignore: cast_nullable_to_non_nullable
              as List<HomeTvResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isLoading,
      bool isError,
      List<HomeTopRatedResult> southIndianCinema,
      List<HomeTopRatedResult> releasedInPastYear,
      List<HomeTopRatedResult> tenseDrama,
      List<HomeTopRatedResult> trndingNow,
      List<HomeTvResult> top10});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? southIndianCinema = null,
    Object? releasedInPastYear = null,
    Object? tenseDrama = null,
    Object? trndingNow = null,
    Object? top10 = null,
  }) {
    return _then(_$HomeStateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      southIndianCinema: null == southIndianCinema
          ? _value._southIndianCinema
          : southIndianCinema // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      releasedInPastYear: null == releasedInPastYear
          ? _value._releasedInPastYear
          : releasedInPastYear // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      tenseDrama: null == tenseDrama
          ? _value._tenseDrama
          : tenseDrama // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      trndingNow: null == trndingNow
          ? _value._trndingNow
          : trndingNow // ignore: cast_nullable_to_non_nullable
              as List<HomeTopRatedResult>,
      top10: null == top10
          ? _value._top10
          : top10 // ignore: cast_nullable_to_non_nullable
              as List<HomeTvResult>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {required this.id,
      required this.isLoading,
      required this.isError,
      required final List<HomeTopRatedResult> southIndianCinema,
      required final List<HomeTopRatedResult> releasedInPastYear,
      required final List<HomeTopRatedResult> tenseDrama,
      required final List<HomeTopRatedResult> trndingNow,
      required final List<HomeTvResult> top10})
      : _southIndianCinema = southIndianCinema,
        _releasedInPastYear = releasedInPastYear,
        _tenseDrama = tenseDrama,
        _trndingNow = trndingNow,
        _top10 = top10;

  @override
  final String id;
  @override
  final bool isLoading;
  @override
  final bool isError;
  final List<HomeTopRatedResult> _southIndianCinema;
  @override
  List<HomeTopRatedResult> get southIndianCinema {
    if (_southIndianCinema is EqualUnmodifiableListView)
      return _southIndianCinema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_southIndianCinema);
  }

  final List<HomeTopRatedResult> _releasedInPastYear;
  @override
  List<HomeTopRatedResult> get releasedInPastYear {
    if (_releasedInPastYear is EqualUnmodifiableListView)
      return _releasedInPastYear;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releasedInPastYear);
  }

  final List<HomeTopRatedResult> _tenseDrama;
  @override
  List<HomeTopRatedResult> get tenseDrama {
    if (_tenseDrama is EqualUnmodifiableListView) return _tenseDrama;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tenseDrama);
  }

  final List<HomeTopRatedResult> _trndingNow;
  @override
  List<HomeTopRatedResult> get trndingNow {
    if (_trndingNow is EqualUnmodifiableListView) return _trndingNow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trndingNow);
  }

  final List<HomeTvResult> _top10;
  @override
  List<HomeTvResult> get top10 {
    if (_top10 is EqualUnmodifiableListView) return _top10;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10);
  }

  @override
  String toString() {
    return 'HomeState(id: $id, isLoading: $isLoading, isError: $isError, southIndianCinema: $southIndianCinema, releasedInPastYear: $releasedInPastYear, tenseDrama: $tenseDrama, trndingNow: $trndingNow, top10: $top10)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._southIndianCinema, _southIndianCinema) &&
            const DeepCollectionEquality()
                .equals(other._releasedInPastYear, _releasedInPastYear) &&
            const DeepCollectionEquality()
                .equals(other._tenseDrama, _tenseDrama) &&
            const DeepCollectionEquality()
                .equals(other._trndingNow, _trndingNow) &&
            const DeepCollectionEquality().equals(other._top10, _top10));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isLoading,
      isError,
      const DeepCollectionEquality().hash(_southIndianCinema),
      const DeepCollectionEquality().hash(_releasedInPastYear),
      const DeepCollectionEquality().hash(_tenseDrama),
      const DeepCollectionEquality().hash(_trndingNow),
      const DeepCollectionEquality().hash(_top10));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final String id,
      required final bool isLoading,
      required final bool isError,
      required final List<HomeTopRatedResult> southIndianCinema,
      required final List<HomeTopRatedResult> releasedInPastYear,
      required final List<HomeTopRatedResult> tenseDrama,
      required final List<HomeTopRatedResult> trndingNow,
      required final List<HomeTvResult> top10}) = _$HomeStateImpl;

  @override
  String get id;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<HomeTopRatedResult> get southIndianCinema;
  @override
  List<HomeTopRatedResult> get releasedInPastYear;
  @override
  List<HomeTopRatedResult> get tenseDrama;
  @override
  List<HomeTopRatedResult> get trndingNow;
  @override
  List<HomeTvResult> get top10;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
