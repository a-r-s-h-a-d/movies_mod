import 'package:flutter/material.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

Widget movieDetails({required String title, required bool isVisible}) {
  return Row(
    children: [
      Text(
        title,
        style: ktextStyle10x400xgrey,
        overflow: TextOverflow.fade,
      ),
      kwidth5,
      Visibility(
        visible: isVisible,
        child: const CircleAvatar(
          radius: 2,
          backgroundColor: kgreyColor,
        ),
      ),
      kwidth5,
    ],
  );
}
