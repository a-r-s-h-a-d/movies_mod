import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/colors/colors.dart';

class ProgressXP extends StatelessWidget {
  const ProgressXP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 250.w,
          child: FAProgressBar(
            currentValue: 66,
            size: 5,
            progressGradient: progressBarGradient(),
          ),
        ),
        Text(
          'View Progress',
          style: TextStyle(
              color: kblueColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Gilroy'),
        ),
      ],
    );
  }
}
