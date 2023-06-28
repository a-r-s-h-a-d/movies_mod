import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class OptionsListTile extends StatelessWidget {
  final IconData icon;
  final String option;
  const OptionsListTile({
    super.key,
    required this.icon,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0.w),
      child: ListTile(
        leading: Icon(
          icon,
          color: kwhiteColor,
        ),
        title: Text(
          option,
          style: ktextstyle14x500xwhite.copyWith(fontFamily: 'Gilroy'),
        ),
        trailing: Transform.scale(
          scale: 0.7,
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: kwhiteColor,
          ),
        ),
      ),
    );
  }
}
