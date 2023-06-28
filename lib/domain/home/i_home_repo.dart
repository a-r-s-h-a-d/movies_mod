import 'package:dartz/dartz.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/home/model/home.dart';

abstract class IHomeRepo {
  Future<Either<MainFailure, List<Home>>> getTrendingThisWeek();
  Future<Either<MainFailure, List<Home>>> getPopularMovies();
  Future<Either<MainFailure, List<Home>>> getTrendingNow();
}
