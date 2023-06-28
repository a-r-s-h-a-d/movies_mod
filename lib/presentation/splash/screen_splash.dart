import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/presentation/intermediate/screen_intermediate.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: backgroundDecoration(),
        child: AnimatedSplashScreen(
          backgroundColor: Colors.transparent,
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          splash: Image.asset('assets/images/logo.png'),
          nextScreen: const ScreenIntermediate(),
        ),
      ),
    );
  }
}
