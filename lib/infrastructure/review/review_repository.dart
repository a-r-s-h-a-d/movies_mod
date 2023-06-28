import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/core/api_endpoints.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/review/i_review_repo.dart';
import 'package:movies_mod/domain/review/model/review.dart';

@LazySingleton(as: IReviewRepo)
class ReviewRepository implements IReviewRepo {
  @override
  Future<Either<MainFailure, List<Review>>> getReviews(
      {required int movieId}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoints.getReviewsEndpoint(movieId));

      if (response.statusCode == 200 || response.statusCode == 201) {
        final reviewData = response.data['results'];
        if (reviewData != null && reviewData is List<dynamic>) {
          final reviewList = reviewData.map((e) => Review.fromJson(e)).toList();

          return Right(reviewList);
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
