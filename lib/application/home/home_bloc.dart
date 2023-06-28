import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_mod/domain/home/i_home_repo.dart';
import 'package:movies_mod/domain/home/model/home.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepo _homeRepo;
  HomeBloc(this._homeRepo) : super(HomeState.initial()) {
    on<UpdateCarouselIndex>((event, emit) {
      emit(state.copyWith(currentIndex: event.index));
    });
    on<GetTrendingWeekMovies>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final trendingThisWeek = await _homeRepo.getTrendingThisWeek();
      emit(trendingThisWeek.fold(
          (failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (success) => state.copyWith(
                isLoading: false,
                hasError: false,
                trendingthisweek: success,
              )));
    });
    on<GetPopularMovies>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final trendingPopularMovies = await _homeRepo.getPopularMovies();

      emit(trendingPopularMovies.fold(
          (failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (success) => state.copyWith(
                isLoading: false,
                hasError: false,
                popularmovies: success,
              )));
    });
    on<GetTrendingNowMovies>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
      ));
      final trendingPopularMovies = await _homeRepo.getTrendingNow();

      emit(trendingPopularMovies.fold(
          (failure) => state.copyWith(
                isLoading: false,
                hasError: true,
              ),
          (success) => state.copyWith(
                isLoading: false,
                hasError: false,
                trendingnow: success,
              )));
    });
  }
}
