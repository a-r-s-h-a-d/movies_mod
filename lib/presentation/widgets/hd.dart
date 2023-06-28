import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class HD extends StatelessWidget {
  const HD({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17.h,
      width: 23.w,
      decoration: BoxDecoration(
        color: kyellowColor,
        borderRadius: BorderRadius.all(Radius.circular(2.r)),
      ),
      child: Center(
          child: Text(
        'HD',
        style: ktextStyle10x600,
      )),
    );
  }
}
