part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState({
    required bool isLoading,
    required bool hasError,
    List<CastMember>? castList,
    List<Review>? reviewList,
    List<GenreVotingRuntime>? gvrList,
    String? duration,
  }) = _MovieState;
  factory MovieDetailsState.initial() => const MovieDetailsState(
        isLoading: false,
        hasError: false,
        castList: [],
        reviewList: [],
        gvrList: [],
        duration: '0',
      );
}
