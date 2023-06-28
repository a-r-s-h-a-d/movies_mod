import 'package:movies_mod/domain/core/strings.dart';
import 'package:movies_mod/infrastructure/api_key.dart';

class ApiEndPoints {
  static const trendingthisweek =
      "$kBaseUrl/trending/movie/week?api_key=$apiKey";
  static const trendingnow = "$kBaseUrl/trending/movie/day?api_key=$apiKey";
  static const popular = "$kBaseUrl/movie/popular?api_key=$apiKey";

  static String getCastEndpoint(int movieId) {
    return "$kBaseUrl/movie/$movieId/credits?api_key=$apiKey";
  }

  static String getReviewsEndpoint(int movieId) {
    return "$kBaseUrl/movie/$movieId/reviews?api_key=$apiKey";
  }

  static String getRuntimeGenreRating(int movieId) {
    return "$kBaseUrl/movie/$movieId?api_key=$apiKey&append_to_response=credits";
  }
}
