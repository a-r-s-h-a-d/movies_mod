import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/core/api_endpoints.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/home/i_home_repo.dart';
import 'package:movies_mod/domain/home/model/home.dart';

@LazySingleton(as: IHomeRepo)
class HomeRepository implements IHomeRepo {
  @override
  Future<Either<MainFailure, List<Home>>> getTrendingThisWeek() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.trendingthisweek);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final trendingWeekList = (response.data['results'] as List).map((e) {
          return Home.fromJson(e);
        }).toList();
        return Right(trendingWeekList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Home>>> getPopularMovies() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popular);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popularMoviesList = (response.data['results'] as List).map((e) {
          return Home.fromJson(e);
        }).toList();

        return Right(popularMoviesList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<Home>>> getTrendingNow() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.trendingnow);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popularMoviesList = (response.data['results'] as List).map((e) {
          return Home.fromJson(e);
        }).toList();

        return Right(popularMoviesList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
