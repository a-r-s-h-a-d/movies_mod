import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;
  const CustomButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: kgreyColor,
        ),
        Text(
          title,
          style: ktextStyle10x400xgrey,
        )
      ],
    );
  }
}
