import 'package:dartz/dartz.dart';
import 'package:movies_mod/domain/cast/model/cast.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';

abstract class ICastRepo {
  Future<Either<MainFailure, List<CastMember>>> getCastDetails(
      {required int movieId});
}
