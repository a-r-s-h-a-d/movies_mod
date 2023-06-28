import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      width: 66.w,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: NetworkImage(auth.currentUser!.photoURL!),
          ),
          Positioned(
              left: 41.h,
              top: 38.w,
              child: CircleAvatar(
                backgroundColor: kwhiteColor,
                radius: 10.r,
                child: CircleAvatar(
                  radius: 9.r,
                  child: Icon(
                    Icons.edit,
                    size: 12.sp,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
