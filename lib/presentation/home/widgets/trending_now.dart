import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/domain/core/strings.dart';
import 'package:movies_mod/presentation/widgets/main_titlecard.dart';

class TrendingNow extends StatelessWidget {
  const TrendingNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final trendnowList = state.trendingnow!
            .map((e) => '$imageAppendUrl${e.posterPath}')
            .toList();
        final title = state.trendingnow!.map((e) => e.title).toList();
        final overview = state.trendingnow!.map((e) => e.overview).toList();
        final id = state.trendingnow!.map((e) => e.id).toList();
        final releasedYear = state.trendingnow!
            .map((e) => DateTime.parse(e.releasedDate).year)
            .toList();
        return MainTitleCard(
          id: id,
          maintitle: 'Trending Now',
          posterList: trendnowList,
          title: title,
          overview: overview,
          releasedYear: releasedYear,
        );
      },
    );
  }
}
