part of 'movie_details_bloc.dart';

@freezed
class MovieDetailsEvent with _$MovieDetailsEvent {
  const factory MovieDetailsEvent.getCastDetails({required int movieId}) =
      GetCastDetails;
  const factory MovieDetailsEvent.getReviews({required int movieId}) =
      GetReviews;

  const factory MovieDetailsEvent.getGenreVoteRuntime({required int movieId}) =
      GetGenreVoteRuntime;

  const factory MovieDetailsEvent.getDuration({required int? minutes}) =
      GetDuration;
}
