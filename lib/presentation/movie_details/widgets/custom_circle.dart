import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/colors/colors.dart';

class CustomCircle extends StatelessWidget {
  final double radius;
  final Offset offset;
  final IconData icon;
  final double? iconSize;
  final Color backgroundColor;
  const CustomCircle({
    super.key,
    required this.radius,
    required this.offset,
    required this.icon,
    required this.backgroundColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: Transform.translate(
        offset: offset,
        child: Icon(
          icon,
          color: kwhiteColor,
          size: iconSize,
        ),
      ),
    );
  }
}
