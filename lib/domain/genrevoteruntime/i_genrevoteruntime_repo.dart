import 'package:dartz/dartz.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/genrevoteruntime/models/genre_voting_runtime.dart';

abstract class IGenreVoteRuntimeRepo {
  Future<Either<MainFailure, List<GenreVotingRuntime>>> getGenVoteRun(
      {required int movieId});
}
