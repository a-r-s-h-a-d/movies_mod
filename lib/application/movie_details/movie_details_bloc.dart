import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/cast/i_cast_repo.dart';
import 'package:movies_mod/domain/cast/model/cast.dart';
import 'package:movies_mod/domain/genrevoteruntime/i_genrevoteruntime_repo.dart';
import 'package:movies_mod/domain/genrevoteruntime/models/genre_voting_runtime.dart';
import 'package:movies_mod/domain/review/i_review_repo.dart';
import 'package:movies_mod/domain/review/model/review.dart';

part 'movie_details_bloc.freezed.dart';
part 'movie_details_event.dart';
part 'movie_details_state.dart';

@Injectable()
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  final ICastRepo _castRepo;
  final IReviewRepo _reviewRepo;
  final IGenreVoteRuntimeRepo _genreVoteRuntimeRepo;
  MovieDetailsBloc(this._castRepo, this._reviewRepo, this._genreVoteRuntimeRepo)
      : super(MovieDetailsState.initial()) {
    on<GetCastDetails>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final castList = await _castRepo.getCastDetails(movieId: event.movieId);
      emit(castList.fold(
        (failure) => state.copyWith(
          isLoading: false,
          hasError: true,
        ),
        (success) => state.copyWith(
          isLoading: false,
          hasError: false,
          castList: success,
        ),
      ));
    });
    on<GetReviews>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final reviewList = await _reviewRepo.getReviews(movieId: event.movieId);
      emit(reviewList.fold(
          (failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (success) => state.copyWith(
              isLoading: false, hasError: false, reviewList: success)));
    });

    on<GetGenreVoteRuntime>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final gvrList =
          await _genreVoteRuntimeRepo.getGenVoteRun(movieId: event.movieId);

      emit(gvrList.fold(
          (failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (success) => state.copyWith(
              isLoading: false, hasError: false, gvrList: success)));
    });

    on<GetDuration>((event, emit) {
      int hours = event.minutes! ~/ 60;
      int remainingMinutes = event.minutes! % 60;

      String formattedDuration =
          '${hours.toString().padLeft(2, '0')}h ${remainingMinutes.toString().padLeft(2, '0')}m';
      emit(state.copyWith(duration: formattedDuration));
    });
  }
}
