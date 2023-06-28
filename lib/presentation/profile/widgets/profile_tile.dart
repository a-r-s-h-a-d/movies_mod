import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/presentation/profile/widgets/profile_pic.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ProfilePic(),
        SizedBox(width: 2.w),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              auth.currentUser!.displayName!,
              style: ktextStyle600x14xsilver.copyWith(
                  color: kwhiteColor, fontFamily: 'Gilroy'),
            ),
            Text(
              'Lvl 1 moviebuff',
              style: ktextstyle12x500xgrey.copyWith(fontFamily: 'Gilroy'),
            ),
          ],
        ),
        const Spacer(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Edit Profile',
              style: ktextstyle12x500xgrey.copyWith(fontFamily: 'Gilroy'),
            ),
            Transform.scale(
              scale: 0.7,
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: kgreyColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
