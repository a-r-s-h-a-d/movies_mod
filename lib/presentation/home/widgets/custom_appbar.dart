import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_mod/core/style/colors/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 23, top: 16, bottom: 32).r,
      height: 32.73.h,
      width: 346.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/Vector.svg',
            width: 18.w,
            height: 14.h,
          ),
          Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.cover,
            width: 150.w,
          ),
          Transform.scale(
            scale: 0.8,
            child: Icon(
              Icons.bookmark_border,
              size: 30.sp,
              color: ksilverColor,
            ),
          ),
        ],
      ),
    );
  }
}
