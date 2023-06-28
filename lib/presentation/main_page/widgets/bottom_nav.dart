import 'package:flutter/material.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, newIndex, child) {
        return Container(
          decoration: backgroundDecoration(),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index) {
              indexChangeNotifier.value = index;
            },
            backgroundColor: Colors.transparent,
            selectedItemColor: kwhiteColor,
            unselectedItemColor: kgreyColor,
            selectedLabelStyle: ktextstyle12white,
            unselectedLabelStyle: ktextstyle12grey,
            iconSize: 30,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border), label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
