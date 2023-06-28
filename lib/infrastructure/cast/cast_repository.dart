import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/cast/i_cast_repo.dart';
import 'package:movies_mod/domain/cast/model/cast.dart';
import 'package:movies_mod/domain/core/api_endpoints.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';

@LazySingleton(as: ICastRepo)
class CastRepository implements ICastRepo {
  CastRepository();

  @override
  Future<Either<MainFailure, List<CastMember>>> getCastDetails(
      {required int movieId}) async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.getCastEndpoint(movieId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final castData = response.data['cast'];
        if (castData != null && castData is List<dynamic>) {
          final castList = castData.map((e) => CastMember.fromJson(e)).toList();

          return Right(castList);
        } else {
          return const Left(MainFailure.serverFailure());
        }
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
