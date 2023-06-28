import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: ktextstyle18w700white,
    );
  }
}
