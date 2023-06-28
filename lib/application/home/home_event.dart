part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.updateCarouselIndex({required int index}) =
      UpdateCarouselIndex;
  const factory HomeEvent.getTrendingWeekMovies() = GetTrendingWeekMovies;
  const factory HomeEvent.getPopularMovies() = GetPopularMovies;
  const factory HomeEvent.getTrendingNowMovies() = GetTrendingNowMovies;
}
