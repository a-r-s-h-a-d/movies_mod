import 'package:flutter/material.dart';
import 'package:movies_mod/presentation/favorites/screen_favorites.dart';
import 'package:movies_mod/presentation/home/screen_home.dart';
import 'package:movies_mod/presentation/main_page/widgets/bottom_nav.dart';
import 'package:movies_mod/presentation/profile/screen_profile.dart';
import 'package:movies_mod/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final pages = [
    const ScreenHome(),
    const ScreenSearch(),
    const ScreenFavorites(),
    const ScreenProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            return pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
