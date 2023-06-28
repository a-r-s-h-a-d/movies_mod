import 'package:dartz/dartz.dart';
import 'package:movies_mod/domain/core/failures/main_failure.dart';
import 'package:movies_mod/domain/review/model/review.dart';

abstract class IReviewRepo {
  Future<Either<MainFailure, List<Review>>> getReviews({required int movieId});
}
