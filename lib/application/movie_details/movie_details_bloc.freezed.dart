// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getCastDetails,
    required TResult Function(int movieId) getReviews,
    required TResult Function(int movieId) getGenreVoteRuntime,
    required TResult Function(int? minutes) getDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getCastDetails,
    TResult? Function(int movieId)? getReviews,
    TResult? Function(int movieId)? getGenreVoteRuntime,
    TResult? Function(int? minutes)? getDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getCastDetails,
    TResult Function(int movieId)? getReviews,
    TResult Function(int movieId)? getGenreVoteRuntime,
    TResult Function(int? minutes)? getDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastDetails value) getCastDetails,
    required TResult Function(GetReviews value) getReviews,
    required TResult Function(GetGenreVoteRuntime value) getGenreVoteRuntime,
    required TResult Function(GetDuration value) getDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCastDetails value)? getCastDetails,
    TResult? Function(GetReviews value)? getReviews,
    TResult? Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult? Function(GetDuration value)? getDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastDetails value)? getCastDetails,
    TResult Function(GetReviews value)? getReviews,
    TResult Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult Function(GetDuration value)? getDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res, MovieDetailsEvent>;
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res, $Val extends MovieDetailsEvent>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCastDetailsCopyWith<$Res> {
  factory _$$GetCastDetailsCopyWith(
          _$GetCastDetails value, $Res Function(_$GetCastDetails) then) =
      __$$GetCastDetailsCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetCastDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$GetCastDetails>
    implements _$$GetCastDetailsCopyWith<$Res> {
  __$$GetCastDetailsCopyWithImpl(
      _$GetCastDetails _value, $Res Function(_$GetCastDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetCastDetails(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCastDetails implements GetCastDetails {
  const _$GetCastDetails({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.getCastDetails(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCastDetails &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCastDetailsCopyWith<_$GetCastDetails> get copyWith =>
      __$$GetCastDetailsCopyWithImpl<_$GetCastDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getCastDetails,
    required TResult Function(int movieId) getReviews,
    required TResult Function(int movieId) getGenreVoteRuntime,
    required TResult Function(int? minutes) getDuration,
  }) {
    return getCastDetails(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getCastDetails,
    TResult? Function(int movieId)? getReviews,
    TResult? Function(int movieId)? getGenreVoteRuntime,
    TResult? Function(int? minutes)? getDuration,
  }) {
    return getCastDetails?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getCastDetails,
    TResult Function(int movieId)? getReviews,
    TResult Function(int movieId)? getGenreVoteRuntime,
    TResult Function(int? minutes)? getDuration,
    required TResult orElse(),
  }) {
    if (getCastDetails != null) {
      return getCastDetails(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastDetails value) getCastDetails,
    required TResult Function(GetReviews value) getReviews,
    required TResult Function(GetGenreVoteRuntime value) getGenreVoteRuntime,
    required TResult Function(GetDuration value) getDuration,
  }) {
    return getCastDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCastDetails value)? getCastDetails,
    TResult? Function(GetReviews value)? getReviews,
    TResult? Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult? Function(GetDuration value)? getDuration,
  }) {
    return getCastDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastDetails value)? getCastDetails,
    TResult Function(GetReviews value)? getReviews,
    TResult Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult Function(GetDuration value)? getDuration,
    required TResult orElse(),
  }) {
    if (getCastDetails != null) {
      return getCastDetails(this);
    }
    return orElse();
  }
}

abstract class GetCastDetails implements MovieDetailsEvent {
  const factory GetCastDetails({required final int movieId}) = _$GetCastDetails;

  int get movieId;
  @JsonKey(ignore: true)
  _$$GetCastDetailsCopyWith<_$GetCastDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReviewsCopyWith<$Res> {
  factory _$$GetReviewsCopyWith(
          _$GetReviews value, $Res Function(_$GetReviews) then) =
      __$$GetReviewsCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetReviewsCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$GetReviews>
    implements _$$GetReviewsCopyWith<$Res> {
  __$$GetReviewsCopyWithImpl(
      _$GetReviews _value, $Res Function(_$GetReviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetReviews(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetReviews implements GetReviews {
  const _$GetReviews({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.getReviews(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReviews &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReviewsCopyWith<_$GetReviews> get copyWith =>
      __$$GetReviewsCopyWithImpl<_$GetReviews>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getCastDetails,
    required TResult Function(int movieId) getReviews,
    required TResult Function(int movieId) getGenreVoteRuntime,
    required TResult Function(int? minutes) getDuration,
  }) {
    return getReviews(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getCastDetails,
    TResult? Function(int movieId)? getReviews,
    TResult? Function(int movieId)? getGenreVoteRuntime,
    TResult? Function(int? minutes)? getDuration,
  }) {
    return getReviews?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getCastDetails,
    TResult Function(int movieId)? getReviews,
    TResult Function(int movieId)? getGenreVoteRuntime,
    TResult Function(int? minutes)? getDuration,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastDetails value) getCastDetails,
    required TResult Function(GetReviews value) getReviews,
    required TResult Function(GetGenreVoteRuntime value) getGenreVoteRuntime,
    required TResult Function(GetDuration value) getDuration,
  }) {
    return getReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCastDetails value)? getCastDetails,
    TResult? Function(GetReviews value)? getReviews,
    TResult? Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult? Function(GetDuration value)? getDuration,
  }) {
    return getReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastDetails value)? getCastDetails,
    TResult Function(GetReviews value)? getReviews,
    TResult Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult Function(GetDuration value)? getDuration,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews(this);
    }
    return orElse();
  }
}

abstract class GetReviews implements MovieDetailsEvent {
  const factory GetReviews({required final int movieId}) = _$GetReviews;

  int get movieId;
  @JsonKey(ignore: true)
  _$$GetReviewsCopyWith<_$GetReviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGenreVoteRuntimeCopyWith<$Res> {
  factory _$$GetGenreVoteRuntimeCopyWith(_$GetGenreVoteRuntime value,
          $Res Function(_$GetGenreVoteRuntime) then) =
      __$$GetGenreVoteRuntimeCopyWithImpl<$Res>;
  @useResult
  $Res call({int movieId});
}

/// @nodoc
class __$$GetGenreVoteRuntimeCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$GetGenreVoteRuntime>
    implements _$$GetGenreVoteRuntimeCopyWith<$Res> {
  __$$GetGenreVoteRuntimeCopyWithImpl(
      _$GetGenreVoteRuntime _value, $Res Function(_$GetGenreVoteRuntime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
  }) {
    return _then(_$GetGenreVoteRuntime(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGenreVoteRuntime implements GetGenreVoteRuntime {
  const _$GetGenreVoteRuntime({required this.movieId});

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.getGenreVoteRuntime(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGenreVoteRuntime &&
            (identical(other.movieId, movieId) || other.movieId == movieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGenreVoteRuntimeCopyWith<_$GetGenreVoteRuntime> get copyWith =>
      __$$GetGenreVoteRuntimeCopyWithImpl<_$GetGenreVoteRuntime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getCastDetails,
    required TResult Function(int movieId) getReviews,
    required TResult Function(int movieId) getGenreVoteRuntime,
    required TResult Function(int? minutes) getDuration,
  }) {
    return getGenreVoteRuntime(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getCastDetails,
    TResult? Function(int movieId)? getReviews,
    TResult? Function(int movieId)? getGenreVoteRuntime,
    TResult? Function(int? minutes)? getDuration,
  }) {
    return getGenreVoteRuntime?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getCastDetails,
    TResult Function(int movieId)? getReviews,
    TResult Function(int movieId)? getGenreVoteRuntime,
    TResult Function(int? minutes)? getDuration,
    required TResult orElse(),
  }) {
    if (getGenreVoteRuntime != null) {
      return getGenreVoteRuntime(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastDetails value) getCastDetails,
    required TResult Function(GetReviews value) getReviews,
    required TResult Function(GetGenreVoteRuntime value) getGenreVoteRuntime,
    required TResult Function(GetDuration value) getDuration,
  }) {
    return getGenreVoteRuntime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCastDetails value)? getCastDetails,
    TResult? Function(GetReviews value)? getReviews,
    TResult? Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult? Function(GetDuration value)? getDuration,
  }) {
    return getGenreVoteRuntime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastDetails value)? getCastDetails,
    TResult Function(GetReviews value)? getReviews,
    TResult Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult Function(GetDuration value)? getDuration,
    required TResult orElse(),
  }) {
    if (getGenreVoteRuntime != null) {
      return getGenreVoteRuntime(this);
    }
    return orElse();
  }
}

abstract class GetGenreVoteRuntime implements MovieDetailsEvent {
  const factory GetGenreVoteRuntime({required final int movieId}) =
      _$GetGenreVoteRuntime;

  int get movieId;
  @JsonKey(ignore: true)
  _$$GetGenreVoteRuntimeCopyWith<_$GetGenreVoteRuntime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDurationCopyWith<$Res> {
  factory _$$GetDurationCopyWith(
          _$GetDuration value, $Res Function(_$GetDuration) then) =
      __$$GetDurationCopyWithImpl<$Res>;
  @useResult
  $Res call({int? minutes});
}

/// @nodoc
class __$$GetDurationCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res, _$GetDuration>
    implements _$$GetDurationCopyWith<$Res> {
  __$$GetDurationCopyWithImpl(
      _$GetDuration _value, $Res Function(_$GetDuration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = freezed,
  }) {
    return _then(_$GetDuration(
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$GetDuration implements GetDuration {
  const _$GetDuration({required this.minutes});

  @override
  final int? minutes;

  @override
  String toString() {
    return 'MovieDetailsEvent.getDuration(minutes: $minutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDuration &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDurationCopyWith<_$GetDuration> get copyWith =>
      __$$GetDurationCopyWithImpl<_$GetDuration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) getCastDetails,
    required TResult Function(int movieId) getReviews,
    required TResult Function(int movieId) getGenreVoteRuntime,
    required TResult Function(int? minutes) getDuration,
  }) {
    return getDuration(minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int movieId)? getCastDetails,
    TResult? Function(int movieId)? getReviews,
    TResult? Function(int movieId)? getGenreVoteRuntime,
    TResult? Function(int? minutes)? getDuration,
  }) {
    return getDuration?.call(minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? getCastDetails,
    TResult Function(int movieId)? getReviews,
    TResult Function(int movieId)? getGenreVoteRuntime,
    TResult Function(int? minutes)? getDuration,
    required TResult orElse(),
  }) {
    if (getDuration != null) {
      return getDuration(minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCastDetails value) getCastDetails,
    required TResult Function(GetReviews value) getReviews,
    required TResult Function(GetGenreVoteRuntime value) getGenreVoteRuntime,
    required TResult Function(GetDuration value) getDuration,
  }) {
    return getDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCastDetails value)? getCastDetails,
    TResult? Function(GetReviews value)? getReviews,
    TResult? Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult? Function(GetDuration value)? getDuration,
  }) {
    return getDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCastDetails value)? getCastDetails,
    TResult Function(GetReviews value)? getReviews,
    TResult Function(GetGenreVoteRuntime value)? getGenreVoteRuntime,
    TResult Function(GetDuration value)? getDuration,
    required TResult orElse(),
  }) {
    if (getDuration != null) {
      return getDuration(this);
    }
    return orElse();
  }
}

abstract class GetDuration implements MovieDetailsEvent {
  const factory GetDuration({required final int? minutes}) = _$GetDuration;

  int? get minutes;
  @JsonKey(ignore: true)
  _$$GetDurationCopyWith<_$GetDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  List<CastMember>? get castList => throw _privateConstructorUsedError;
  List<Review>? get reviewList => throw _privateConstructorUsedError;
  List<GenreVotingRuntime>? get gvrList => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsStateCopyWith<MovieDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res, MovieDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<CastMember>? castList,
      List<Review>? reviewList,
      List<GenreVotingRuntime>? gvrList,
      String? duration});
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res, $Val extends MovieDetailsState>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? castList = freezed,
    Object? reviewList = freezed,
    Object? gvrList = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      castList: freezed == castList
          ? _value.castList
          : castList // ignore: cast_nullable_to_non_nullable
              as List<CastMember>?,
      reviewList: freezed == reviewList
          ? _value.reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      gvrList: freezed == gvrList
          ? _value.gvrList
          : gvrList // ignore: cast_nullable_to_non_nullable
              as List<GenreVotingRuntime>?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieStateCopyWith<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  factory _$$_MovieStateCopyWith(
          _$_MovieState value, $Res Function(_$_MovieState) then) =
      __$$_MovieStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      List<CastMember>? castList,
      List<Review>? reviewList,
      List<GenreVotingRuntime>? gvrList,
      String? duration});
}

/// @nodoc
class __$$_MovieStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res, _$_MovieState>
    implements _$$_MovieStateCopyWith<$Res> {
  __$$_MovieStateCopyWithImpl(
      _$_MovieState _value, $Res Function(_$_MovieState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? castList = freezed,
    Object? reviewList = freezed,
    Object? gvrList = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_MovieState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      castList: freezed == castList
          ? _value._castList
          : castList // ignore: cast_nullable_to_non_nullable
              as List<CastMember>?,
      reviewList: freezed == reviewList
          ? _value._reviewList
          : reviewList // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      gvrList: freezed == gvrList
          ? _value._gvrList
          : gvrList // ignore: cast_nullable_to_non_nullable
              as List<GenreVotingRuntime>?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MovieState implements _MovieState {
  const _$_MovieState(
      {required this.isLoading,
      required this.hasError,
      final List<CastMember>? castList,
      final List<Review>? reviewList,
      final List<GenreVotingRuntime>? gvrList,
      this.duration})
      : _castList = castList,
        _reviewList = reviewList,
        _gvrList = gvrList;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  final List<CastMember>? _castList;
  @override
  List<CastMember>? get castList {
    final value = _castList;
    if (value == null) return null;
    if (_castList is EqualUnmodifiableListView) return _castList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Review>? _reviewList;
  @override
  List<Review>? get reviewList {
    final value = _reviewList;
    if (value == null) return null;
    if (_reviewList is EqualUnmodifiableListView) return _reviewList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GenreVotingRuntime>? _gvrList;
  @override
  List<GenreVotingRuntime>? get gvrList {
    final value = _gvrList;
    if (value == null) return null;
    if (_gvrList is EqualUnmodifiableListView) return _gvrList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? duration;

  @override
  String toString() {
    return 'MovieDetailsState(isLoading: $isLoading, hasError: $hasError, castList: $castList, reviewList: $reviewList, gvrList: $gvrList, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            const DeepCollectionEquality().equals(other._castList, _castList) &&
            const DeepCollectionEquality()
                .equals(other._reviewList, _reviewList) &&
            const DeepCollectionEquality().equals(other._gvrList, _gvrList) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      const DeepCollectionEquality().hash(_castList),
      const DeepCollectionEquality().hash(_reviewList),
      const DeepCollectionEquality().hash(_gvrList),
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      __$$_MovieStateCopyWithImpl<_$_MovieState>(this, _$identity);
}

abstract class _MovieState implements MovieDetailsState {
  const factory _MovieState(
      {required final bool isLoading,
      required final bool hasError,
      final List<CastMember>? castList,
      final List<Review>? reviewList,
      final List<GenreVotingRuntime>? gvrList,
      final String? duration}) = _$_MovieState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  List<CastMember>? get castList;
  @override
  List<Review>? get reviewList;
  @override
  List<GenreVotingRuntime>? get gvrList;
  @override
  String? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_MovieStateCopyWith<_$_MovieState> get copyWith =>
      throw _privateConstructorUsedError;
}
