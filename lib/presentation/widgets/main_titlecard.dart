import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/presentation/movie_details/screen_moviedetails.dart';
import 'package:movies_mod/presentation/widgets/main_card.dart';
import 'package:movies_mod/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  final List<int> id;
  final String maintitle;
  final List<String> posterList;
  final List<String> title;
  final List<String> overview;
  final List<int> releasedYear;

  const MainTitleCard({
    required this.posterList,
    required this.title,
    Key? key,
    required this.maintitle,
    required this.overview,
    required this.id,
    required this.releasedYear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: maintitle),
        kheight16,
        LimitedBox(
          maxHeight: 215.h,
          maxWidth: 107.w,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                posterList.length,
                (index) => GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenMovieDetails(
                          id: id[index],
                          photoUrl: posterList[index],
                          title: title[index],
                          overView: overview[index],
                          releasedYear: releasedYear[index],
                        ),
                      )),
                      child: MainCard(
                        imageUrl: posterList[index],
                        overview: overview[index],
                        title: title[index],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
