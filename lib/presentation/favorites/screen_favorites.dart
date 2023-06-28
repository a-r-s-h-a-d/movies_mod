import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: Center(
          child: Text(
            'Favorites',
            style: ktextstyle18w700white,
          ),
        ),
      ),
    );
  }
}
