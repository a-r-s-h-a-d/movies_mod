part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int currentIndex,
    List<Home>? trendingthisweek,
    List<Home>? popularmovies,
    List<Home>? trendingnow,
    required bool isLoading,
    required bool hasError,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        currentIndex: 0,
        isLoading: false,
        hasError: false,
        trendingthisweek: [],
        popularmovies: [],
        trendingnow: [],
      );
}
