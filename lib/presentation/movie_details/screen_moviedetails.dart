import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_mod/application/movie_details/movie_details_bloc.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/presentation/home/widgets/popular_movies.dart';
import 'package:movies_mod/presentation/home/widgets/trending_now.dart';
import 'package:movies_mod/presentation/movie_details/widgets/movie_descr.dart';
import 'package:movies_mod/presentation/movie_details/widgets/preview.dart';
import 'package:movies_mod/presentation/movie_details/widgets/reviews.dart';
import 'package:movies_mod/presentation/movie_details/widgets/top_cast.dart';

class ScreenMovieDetails extends StatelessWidget {
  final int id;
  final String photoUrl;
  final String title;
  final int releasedYear;
  final String overView;

  const ScreenMovieDetails({
    super.key,
    required this.id,
    required this.photoUrl,
    required this.title,
    required this.overView,
    required this.releasedYear,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<MovieDetailsBloc>(context).add(GetCastDetails(movieId: id));
    BlocProvider.of<MovieDetailsBloc>(context).add(GetReviews(movieId: id));
    BlocProvider.of<MovieDetailsBloc>(context)
        .add(GetGenreVoteRuntime(movieId: id));

    return Scaffold(
      body: Container(
        height: 852.h,
        width: 393.w,
        decoration: backgroundDecoration(),
        child: BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.hasError) {
              return Center(
                child: Lottie.asset('assets/lottie/78038-internet-error.json'),
              );
            } else {
              final castList = state.castList!.map((e) => e).toList();
              final reviewList = state.reviewList!.map((e) => e).toList();
              return ListView(
                children: [
                  PreviewContainer(photoUrl: photoUrl),
                  MovieDescr(
                    cast: castList,
                    releasedYear: releasedYear,
                    title: title,
                    overView: overView,
                    gvrList: state.gvrList,
                  ),
                  kheight16,
                  TopCast(castList: castList),
                  kheight16,
                  Reviews(reviewList: reviewList),
                  kheight16,
                  Padding(
                    padding: const EdgeInsets.only(left: 24).r,
                    child: const PopularMovies(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24).r,
                    child: const TrendingNow(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
