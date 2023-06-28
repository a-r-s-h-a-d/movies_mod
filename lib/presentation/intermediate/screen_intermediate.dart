import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:movies_mod/presentation/main_page/screen_mainpage.dart';
import 'package:movies_mod/presentation/sign_in/sign_in.dart';

class ScreenIntermediate extends StatelessWidget {
  const ScreenIntermediate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ScreenMainPage();
        } else {
          return const ScreenSignIn();
        }
      },
    );
  }
}
