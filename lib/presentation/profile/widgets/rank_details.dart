import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class RankDetails extends StatelessWidget {
  const RankDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Rank #322',
            style: ktextstyle20x600xwhite.copyWith(
                fontSize: 12.sp, fontFamily: 'Gilroy'),
          ),
          SizedBox(width: 113.w),
          Text(
            'XP 66/100',
            style: ktextstyle20x600xwhite.copyWith(
                fontSize: 12.sp, fontFamily: 'Gilroy'),
          ),
        ],
      ),
    );
  }
}
