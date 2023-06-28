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
    required TResult Function(int index) updateCarouselIndex,
    required TResult Function() getTrendingWeekMovies,
    required TResult Function() getPopularMovies,
    required TResult Function() getTrendingNowMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateCarouselIndex,
    TResult? Function()? getTrendingWeekMovies,
    TResult? Function()? getPopularMovies,
    TResult? Function()? getTrendingNowMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateCarouselIndex,
    TResult Function()? getTrendingWeekMovies,
    TResult Function()? getPopularMovies,
    TResult Function()? getTrendingNowMovies,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCarouselIndex value) updateCarouselIndex,
    required TResult Function(GetTrendingWeekMovies value)
        getTrendingWeekMovies,
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetTrendingNowMovies value) getTrendingNowMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult? Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetTrendingNowMovies value)? getTrendingNowMovies,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetTrendingNowMovies value)? getTrendingNowMovies,
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
abstract class _$$UpdateCarouselIndexCopyWith<$Res> {
  factory _$$UpdateCarouselIndexCopyWith(_$UpdateCarouselIndex value,
          $Res Function(_$UpdateCarouselIndex) then) =
      __$$UpdateCarouselIndexCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateCarouselIndexCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateCarouselIndex>
    implements _$$UpdateCarouselIndexCopyWith<$Res> {
  __$$UpdateCarouselIndexCopyWithImpl(
      _$UpdateCarouselIndex _value, $Res Function(_$UpdateCarouselIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateCarouselIndex(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCarouselIndex implements UpdateCarouselIndex {
  const _$UpdateCarouselIndex({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateCarouselIndex(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCarouselIndex &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCarouselIndexCopyWith<_$UpdateCarouselIndex> get copyWith =>
      __$$UpdateCarouselIndexCopyWithImpl<_$UpdateCarouselIndex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateCarouselIndex,
    required TResult Function() getTrendingWeekMovies,
    required TResult Function() getPopularMovies,
    required TResult Function() getTrendingNowMovies,
  }) {
    return updateCarouselIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateCarouselIndex,
    TResult? Function()? getTrendingWeekMovies,
    TResult? Function()? getPopularMovies,
    TResult? Function()? getTrendingNowMovies,
  }) {
    return updateCarouselIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateCarouselIndex,
    TResult Function()? getTrendingWeekMovies,
    TResult Function()? getPopularMovies,
    TResult Function()? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (updateCarouselIndex != null) {
      return updateCarouselIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCarouselIndex value) updateCarouselIndex,
    required TResult Function(GetTrendingWeekMovies value)
        getTrendingWeekMovies,
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetTrendingNowMovies value) getTrendingNowMovies,
  }) {
    return updateCarouselIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult? Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetTrendingNowMovies value)? getTrendingNowMovies,
  }) {
    return updateCarouselIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetTrendingNowMovies value)? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (updateCarouselIndex != null) {
      return updateCarouselIndex(this);
    }
    return orElse();
  }
}

abstract class UpdateCarouselIndex implements HomeEvent {
  const factory UpdateCarouselIndex({required final int index}) =
      _$UpdateCarouselIndex;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateCarouselIndexCopyWith<_$UpdateCarouselIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTrendingWeekMoviesCopyWith<$Res> {
  factory _$$GetTrendingWeekMoviesCopyWith(_$GetTrendingWeekMovies value,
          $Res Function(_$GetTrendingWeekMovies) then) =
      __$$GetTrendingWeekMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingWeekMoviesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTrendingWeekMovies>
    implements _$$GetTrendingWeekMoviesCopyWith<$Res> {
  __$$GetTrendingWeekMoviesCopyWithImpl(_$GetTrendingWeekMovies _value,
      $Res Function(_$GetTrendingWeekMovies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingWeekMovies implements GetTrendingWeekMovies {
  const _$GetTrendingWeekMovies();

  @override
  String toString() {
    return 'HomeEvent.getTrendingWeekMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingWeekMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateCarouselIndex,
    required TResult Function() getTrendingWeekMovies,
    required TResult Function() getPopularMovies,
    required TResult Function() getTrendingNowMovies,
  }) {
    return getTrendingWeekMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateCarouselIndex,
    TResult? Function()? getTrendingWeekMovies,
    TResult? Function()? getPopularMovies,
    TResult? Function()? getTrendingNowMovies,
  }) {
    return getTrendingWeekMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateCarouselIndex,
    TResult Function()? getTrendingWeekMovies,
    TResult Function()? getPopularMovies,
    TResult Function()? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getTrendingWeekMovies != null) {
      return getTrendingWeekMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCarouselIndex value) updateCarouselIndex,
    required TResult Function(GetTrendingWeekMovies value)
        getTrendingWeekMovies,
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetTrendingNowMovies value) getTrendingNowMovies,
  }) {
    return getTrendingWeekMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult? Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetTrendingNowMovies value)? getTrendingNowMovies,
  }) {
    return getTrendingWeekMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetTrendingNowMovies value)? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getTrendingWeekMovies != null) {
      return getTrendingWeekMovies(this);
    }
    return orElse();
  }
}

abstract class GetTrendingWeekMovies implements HomeEvent {
  const factory GetTrendingWeekMovies() = _$GetTrendingWeekMovies;
}

/// @nodoc
abstract class _$$GetPopularMoviesCopyWith<$Res> {
  factory _$$GetPopularMoviesCopyWith(
          _$GetPopularMovies value, $Res Function(_$GetPopularMovies) then) =
      __$$GetPopularMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPopularMoviesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetPopularMovies>
    implements _$$GetPopularMoviesCopyWith<$Res> {
  __$$GetPopularMoviesCopyWithImpl(
      _$GetPopularMovies _value, $Res Function(_$GetPopularMovies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPopularMovies implements GetPopularMovies {
  const _$GetPopularMovies();

  @override
  String toString() {
    return 'HomeEvent.getPopularMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPopularMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateCarouselIndex,
    required TResult Function() getTrendingWeekMovies,
    required TResult Function() getPopularMovies,
    required TResult Function() getTrendingNowMovies,
  }) {
    return getPopularMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateCarouselIndex,
    TResult? Function()? getTrendingWeekMovies,
    TResult? Function()? getPopularMovies,
    TResult? Function()? getTrendingNowMovies,
  }) {
    return getPopularMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateCarouselIndex,
    TResult Function()? getTrendingWeekMovies,
    TResult Function()? getPopularMovies,
    TResult Function()? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCarouselIndex value) updateCarouselIndex,
    required TResult Function(GetTrendingWeekMovies value)
        getTrendingWeekMovies,
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetTrendingNowMovies value) getTrendingNowMovies,
  }) {
    return getPopularMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult? Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetTrendingNowMovies value)? getTrendingNowMovies,
  }) {
    return getPopularMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetTrendingNowMovies value)? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getPopularMovies != null) {
      return getPopularMovies(this);
    }
    return orElse();
  }
}

abstract class GetPopularMovies implements HomeEvent {
  const factory GetPopularMovies() = _$GetPopularMovies;
}

/// @nodoc
abstract class _$$GetTrendingNowMoviesCopyWith<$Res> {
  factory _$$GetTrendingNowMoviesCopyWith(_$GetTrendingNowMovies value,
          $Res Function(_$GetTrendingNowMovies) then) =
      __$$GetTrendingNowMoviesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTrendingNowMoviesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetTrendingNowMovies>
    implements _$$GetTrendingNowMoviesCopyWith<$Res> {
  __$$GetTrendingNowMoviesCopyWithImpl(_$GetTrendingNowMovies _value,
      $Res Function(_$GetTrendingNowMovies) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTrendingNowMovies implements GetTrendingNowMovies {
  const _$GetTrendingNowMovies();

  @override
  String toString() {
    return 'HomeEvent.getTrendingNowMovies()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTrendingNowMovies);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) updateCarouselIndex,
    required TResult Function() getTrendingWeekMovies,
    required TResult Function() getPopularMovies,
    required TResult Function() getTrendingNowMovies,
  }) {
    return getTrendingNowMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? updateCarouselIndex,
    TResult? Function()? getTrendingWeekMovies,
    TResult? Function()? getPopularMovies,
    TResult? Function()? getTrendingNowMovies,
  }) {
    return getTrendingNowMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? updateCarouselIndex,
    TResult Function()? getTrendingWeekMovies,
    TResult Function()? getPopularMovies,
    TResult Function()? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getTrendingNowMovies != null) {
      return getTrendingNowMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCarouselIndex value) updateCarouselIndex,
    required TResult Function(GetTrendingWeekMovies value)
        getTrendingWeekMovies,
    required TResult Function(GetPopularMovies value) getPopularMovies,
    required TResult Function(GetTrendingNowMovies value) getTrendingNowMovies,
  }) {
    return getTrendingNowMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult? Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult? Function(GetPopularMovies value)? getPopularMovies,
    TResult? Function(GetTrendingNowMovies value)? getTrendingNowMovies,
  }) {
    return getTrendingNowMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCarouselIndex value)? updateCarouselIndex,
    TResult Function(GetTrendingWeekMovies value)? getTrendingWeekMovies,
    TResult Function(GetPopularMovies value)? getPopularMovies,
    TResult Function(GetTrendingNowMovies value)? getTrendingNowMovies,
    required TResult orElse(),
  }) {
    if (getTrendingNowMovies != null) {
      return getTrendingNowMovies(this);
    }
    return orElse();
  }
}

abstract class GetTrendingNowMovies implements HomeEvent {
  const factory GetTrendingNowMovies() = _$GetTrendingNowMovies;
}

/// @nodoc
mixin _$HomeState {
  int get currentIndex => throw _privateConstructorUsedError;
  List<Home>? get trendingthisweek => throw _privateConstructorUsedError;
  List<Home>? get popularmovies => throw _privateConstructorUsedError;
  List<Home>? get trendingnow => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

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
      {int currentIndex,
      List<Home>? trendingthisweek,
      List<Home>? popularmovies,
      List<Home>? trendingnow,
      bool isLoading,
      bool hasError});
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
    Object? currentIndex = null,
    Object? trendingthisweek = freezed,
    Object? popularmovies = freezed,
    Object? trendingnow = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      trendingthisweek: freezed == trendingthisweek
          ? _value.trendingthisweek
          : trendingthisweek // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      popularmovies: freezed == popularmovies
          ? _value.popularmovies
          : popularmovies // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      trendingnow: freezed == trendingnow
          ? _value.trendingnow
          : trendingnow // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      List<Home>? trendingthisweek,
      List<Home>? popularmovies,
      List<Home>? trendingnow,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? trendingthisweek = freezed,
    Object? popularmovies = freezed,
    Object? trendingnow = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_HomeState(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      trendingthisweek: freezed == trendingthisweek
          ? _value._trendingthisweek
          : trendingthisweek // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      popularmovies: freezed == popularmovies
          ? _value._popularmovies
          : popularmovies // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      trendingnow: freezed == trendingnow
          ? _value._trendingnow
          : trendingnow // ignore: cast_nullable_to_non_nullable
              as List<Home>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.currentIndex,
      final List<Home>? trendingthisweek,
      final List<Home>? popularmovies,
      final List<Home>? trendingnow,
      required this.isLoading,
      required this.hasError})
      : _trendingthisweek = trendingthisweek,
        _popularmovies = popularmovies,
        _trendingnow = trendingnow;

  @override
  final int currentIndex;
  final List<Home>? _trendingthisweek;
  @override
  List<Home>? get trendingthisweek {
    final value = _trendingthisweek;
    if (value == null) return null;
    if (_trendingthisweek is EqualUnmodifiableListView)
      return _trendingthisweek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Home>? _popularmovies;
  @override
  List<Home>? get popularmovies {
    final value = _popularmovies;
    if (value == null) return null;
    if (_popularmovies is EqualUnmodifiableListView) return _popularmovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Home>? _trendingnow;
  @override
  List<Home>? get trendingnow {
    final value = _trendingnow;
    if (value == null) return null;
    if (_trendingnow is EqualUnmodifiableListView) return _trendingnow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(currentIndex: $currentIndex, trendingthisweek: $trendingthisweek, popularmovies: $popularmovies, trendingnow: $trendingnow, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality()
                .equals(other._trendingthisweek, _trendingthisweek) &&
            const DeepCollectionEquality()
                .equals(other._popularmovies, _popularmovies) &&
            const DeepCollectionEquality()
                .equals(other._trendingnow, _trendingnow) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      const DeepCollectionEquality().hash(_trendingthisweek),
      const DeepCollectionEquality().hash(_popularmovies),
      const DeepCollectionEquality().hash(_trendingnow),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final int currentIndex,
      final List<Home>? trendingthisweek,
      final List<Home>? popularmovies,
      final List<Home>? trendingnow,
      required final bool isLoading,
      required final bool hasError}) = _$_HomeState;

  @override
  int get currentIndex;
  @override
  List<Home>? get trendingthisweek;
  @override
  List<Home>? get popularmovies;
  @override
  List<Home>? get trendingnow;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
