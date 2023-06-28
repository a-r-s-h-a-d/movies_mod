// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/home/home_bloc.dart' as _i12;
import '../../../application/movie_details/movie_details_bloc.dart' as _i11;
import '../../../infrastructure/cast/cast_repository.dart' as _i4;
import '../../../infrastructure/genre_vote_eruntime.dart/genvoterun_repository.dart'
    as _i6;
import '../../../infrastructure/home/home_repository.dart' as _i8;
import '../../../infrastructure/review/review_repository.dart' as _i10;
import '../../cast/i_cast_repo.dart' as _i3;
import '../../genrevoteruntime/i_genrevoteruntime_repo.dart' as _i5;
import '../../home/i_home_repo.dart' as _i7;
import '../../review/i_review_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.ICastRepo>(() => _i4.CastRepository());
  gh.lazySingleton<_i5.IGenreVoteRuntimeRepo>(
      () => _i6.GenreVoteRuntimeRepository());
  gh.lazySingleton<_i7.IHomeRepo>(() => _i8.HomeRepository());
  gh.lazySingleton<_i9.IReviewRepo>(() => _i10.ReviewRepository());
  gh.factory<_i11.MovieDetailsBloc>(() => _i11.MovieDetailsBloc(
        get<_i3.ICastRepo>(),
        get<_i9.IReviewRepo>(),
        get<_i5.IGenreVoteRuntimeRepo>(),
      ));
  gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(get<_i7.IHomeRepo>()));
  return get;
}
