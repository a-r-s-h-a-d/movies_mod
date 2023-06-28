import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_mod/application/movie_details/movie_details_bloc.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/domain/cast/model/cast.dart';
import 'package:movies_mod/domain/genrevoteruntime/models/genre_voting_runtime.dart';
import 'package:movies_mod/presentation/movie_details/widgets/custom_button.dart';
import 'package:movies_mod/presentation/movie_details/widgets/movie_details.dart';
import 'package:readmore/readmore.dart';

class MovieDescr extends StatelessWidget {
  final String title;
  final int releasedYear;
  final String overView;
  final List<CastMember> cast;
  final List<GenreVotingRuntime>? gvrList;
  const MovieDescr({
    super.key,
    required this.title,
    required this.releasedYear,
    required this.cast,
    required this.overView,
    required this.gvrList,
  });

  @override
  Widget build(BuildContext context) {
    if (gvrList == null || gvrList!.isEmpty) {
      return Container();
    }

    final runtime = gvrList![0].runtime;
    BlocProvider.of<MovieDetailsBloc>(context)
        .add(GetDuration(minutes: runtime));
    final voteAverage = gvrList![0].voteAverage!.toStringAsFixed(1);

    final genre = gvrList!.expand((e) => e.genres!);
    final selectedGenres = genre.take(1).map((g) => g.name).join(', ');

    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 186.w,
                child: Text(
                  title,
                  style: TextStyle(
                    color: kwhiteColor,
                    fontSize: 24.sp,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 2,
                ),
              ),
              const CustomButton(
                icon: Icons.info_outline,
                title: 'info',
              ),
              const CustomButton(
                icon: Icons.add,
                title: 'Watch later',
              ),
            ],
          ),
          kheight16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  movieDetails(title: releasedYear.toString(), isVisible: true),
                  movieDetails(title: selectedGenres, isVisible: true),
                  movieDetails(title: 'PG-13', isVisible: true),
                  BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
                    builder: (context, state) {
                      return movieDetails(
                          title: state.duration!, isVisible: false);
                    },
                  ),
                  // kwidth30,
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/imdb.svg',
                    width: 20,
                    height: 20,
                  ),
                  kwidth10,
                  movieDetails(title: '$voteAverage/10', isVisible: false)
                ],
              )
            ],
          ),
          kheight16,
          Text(
            'Starring: ${cast.take(5).map((e) => e.originalName)}',
            style: ktextstyle12grey,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          kheight16,
          Container(
            width: 345.w,
            height: 46.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                // Button action
              },
              child: Text('Watch Now',
                  style: ktextstyle16xwhite.copyWith(
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
          kheight10,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                  icon: Icons.favorite_border, title: 'Add to Favorites'),
              CustomButton(
                icon: Icons.file_download_outlined,
                title: 'Download',
              ),
              CustomButton(
                icon: Icons.thumb_up_off_alt,
                title: 'Like',
              ),
              CustomButton(
                icon: Icons.file_upload_outlined,
                title: 'Upload Subtitles',
              )
            ],
          ),
          kheight16,
          ReadMoreText(
            overView,
            style: TextStyle(fontSize: 14.sp, color: kgreyColor),
            trimLines: 4,
            colorClickableText: kblueColor,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: 'Show less',
            moreStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w300,
                color: kblueColor),
          ),
        ],
      ),
    );
  }
}
