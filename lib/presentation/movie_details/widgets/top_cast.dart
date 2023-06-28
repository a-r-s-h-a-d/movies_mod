import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/domain/cast/model/cast.dart';
import 'package:movies_mod/domain/core/strings.dart';

class TopCast extends StatelessWidget {
  final List<CastMember> castList;
  const TopCast({
    super.key,
    required this.castList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24).r,
      child: SizedBox(
        height: 165.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Top Cast',
              style: ktextstyle16xwhite.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            kheight16,
            SizedBox(
              height: 120.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => SizedBox(
                  width: 100.w,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40.r,
                        backgroundImage: NetworkImage(
                            '$imageAppendUrl${castList[index].profilePath}'),
                      ),
                      kheight5,
                      Text(
                        castList[index].originalName,
                        style:
                            ktextStyle10x400xgrey.copyWith(color: kwhiteColor),
                      ),
                      kheight5,
                      Text(
                        castList[index].character,
                        style: ktextStyle10x400xgrey,
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => kwidth10,
                itemCount: castList.length > 10 ? 10 : castList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
