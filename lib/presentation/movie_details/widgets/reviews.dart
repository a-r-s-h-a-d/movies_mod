import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/domain/review/model/review.dart';
import 'package:readmore/readmore.dart';

class Reviews extends StatelessWidget {
  final List<Review> reviewList;
  const Reviews({
    super.key,
    required this.reviewList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24).w,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reviews',
                style: ktextstyle16xwhite,
              ),
              Text(
                'Write a review',
                style: ktextstyle12grey,
              ),
            ],
          ),
          kheight16,
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: kcontainerColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.r),
              child: reviewList.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              reviewList[0].author!,
                              style: ktextstyle14x500xwhite,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.thumb_up_alt_outlined,
                                  color: kgreyColor,
                                ),
                                Text(
                                  '70',
                                  style: ktextStyle10x400xgrey,
                                ),
                                kwidth5,
                                const Icon(
                                  Icons.thumb_down_alt_outlined,
                                  color: kgreyColor,
                                ),
                                Text(
                                  '21',
                                  style: ktextStyle10x400xgrey,
                                ),
                              ],
                            )
                          ],
                        ),
                        kheight10,
                        ReadMoreText(
                          reviewList[0].content!,
                          style: TextStyle(fontSize: 12.sp, color: kgreyColor),
                          trimLines: 4,
                          colorClickableText: kblueColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Read more',
                          trimExpandedText: 'Show less',
                          moreStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                              color: kblueColor),
                        ),
                      ],
                    )
                  : Center(
                      child: Text(
                        'No Reviews Availbale',
                        style: ktextstyle12grey,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
