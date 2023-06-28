import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class WatchItems extends StatelessWidget {
  final String items;
  final int numbers;
  const WatchItems({
    super.key,
    required this.items,
    required this.numbers,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$numbers',
          style: ktextstyle18w700white.copyWith(fontFamily: 'Gilroy'),
        ),
        items == 'movies'
            ? kwidth10
            : SizedBox(
                width: 2.w,
              ),
        Text(
          items,
          style: ktextstyle14xW400.copyWith(
            fontFamily: 'Gilroy',
          ),
        ),
        kwidth20,
      ],
    );
  }
}
