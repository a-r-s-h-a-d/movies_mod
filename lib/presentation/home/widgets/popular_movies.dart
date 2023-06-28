import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/domain/core/strings.dart';
import 'package:movies_mod/presentation/widgets/main_titlecard.dart';

class PopularMovies extends StatelessWidget {
  const PopularMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final popularList = state.popularmovies!
            .map((e) => '$imageAppendUrl${e.posterPath}')
            .toList();
        final title = state.popularmovies!.map((e) => e.title).toList();
        final overview = state.popularmovies!.map((e) => e.overview).toList();
        final id = state.popularmovies!.map((e) => e.id).toList();
        final releasedYear = state.popularmovies!
            .map((e) => DateTime.parse(e.releasedDate).year)
            .toList();
        return MainTitleCard(
          id: id,
          maintitle: 'Popular Movies',
          title: title,
          overview: overview,
          posterList: popularList,
          releasedYear: releasedYear,
        );
      },
    );
  }
}
