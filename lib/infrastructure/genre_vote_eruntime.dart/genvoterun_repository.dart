import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/core/api_endpoints.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/genrevoteruntime/i_genrevoteruntime_repo.dart';
import 'package:movies_mod/domain/genrevoteruntime/models/genre_voting_runtime.dart';

@LazySingleton(as: IGenreVoteRuntimeRepo)
class GenreVoteRuntimeRepository implements IGenreVoteRuntimeRepo {
  @override
  Future<Either<MainFailure, List<GenreVotingRuntime>>> getGenVoteRun(
      {required int movieId}) async {
    try {
      final response =
          await Dio().get(ApiEndPoints.getRuntimeGenreRating(movieId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        log(response.statusCode.toString());
        final jsonData = response.data;
        if (jsonData is List) {
          final genreVotingRuntimeList = jsonData
              .map<GenreVotingRuntime>(
                  (data) => GenreVotingRuntime.fromJson(data))
              .toList();
          log(genreVotingRuntimeList.toString());
          return Right(genreVotingRuntimeList);
        } else if (jsonData is Map<String, dynamic>) {
          final genreVotingRuntime = GenreVotingRuntime.fromJson(jsonData);
          return Right([genreVotingRuntime]);
        } else {
          log('Invalid data format');
          return const Left(MainFailure.serverFailure());
        }
      } else {
        log('Server failure');
        return const Left(MainFailure.serverFailure());
      }
    } catch (error) {
      log(error.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
