import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/presentation/movie_details/widgets/custom_circle.dart';
import 'package:movies_mod/presentation/widgets/hd.dart';

class PreviewContainer extends StatelessWidget {
  final String photoUrl;
  const PreviewContainer({
    super.key,
    required this.photoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 0,
          child: SizedBox(
            height: 414.h,
            width: double.infinity,
            child: Image.network(
              photoUrl,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 16.h,
          left: 24.w,
          child: InkWell(
            child: CustomCircle(
                radius: 20.r,
                offset: Offset(3.w, 2.h),
                backgroundColor: kwhiteColor.withOpacity(0.3),
                icon: Icons.arrow_back_ios),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        Positioned(
          top: 150.h,
          left: 155.w,
          child: CustomCircle(
            radius: 37.5,
            offset: Offset(3.w, 2.h),
            icon: Icons.play_arrow,
            backgroundColor: kwhiteColor.withOpacity(0.5),
            iconSize: 50.sp,
          ),
        ),
        Positioned(
          top: 365.h,
          left: 24.w,
          child: const HD(),
        ),
      ],
    );
  }
}
