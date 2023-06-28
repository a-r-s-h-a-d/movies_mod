import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';

import '../../core/style/textstyle/textstyle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: Center(
          child: Text(
            'Search',
            style: ktextstyle18w700white,
          ),
        ),
      ),
    );
  }
}
