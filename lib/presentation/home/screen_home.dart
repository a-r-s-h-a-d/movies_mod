import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/presentation/home/widgets/carousel.dart';
import 'package:movies_mod/presentation/home/widgets/custom_appbar.dart';
import 'package:movies_mod/presentation/home/widgets/popular_movies.dart';
import 'package:movies_mod/presentation/home/widgets/trending_now.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const GetPopularMovies());
    BlocProvider.of<HomeBloc>(context).add(const GetTrendingNowMovies());
    BlocProvider.of<HomeBloc>(context).add(const GetTrendingWeekMovies());

    return Scaffold(
      body: Container(
        height: 852.h,
        width: 393.w,
        decoration: backgroundDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(left: 15).r,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.hasError) {
                return Center(
                    child: Lottie.asset(
                        'assets/lottie/78038-internet-error.json'));
              } else {
                return ListView(
                  children: [
                    const CustomAppBar(),
                    kheight32,
                    Carousel(
                      trendingThisWeek: state.trendingthisweek,
                      currentIndex: state.currentIndex,
                    ),
                    kheight10,
                    const PopularMovies(),
                    kheight16,
                    const TrendingNow(),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
