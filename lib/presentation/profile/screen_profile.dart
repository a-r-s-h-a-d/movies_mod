import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/presentation/profile/widgets/custom_alertdialog.dart';
import 'package:movies_mod/presentation/profile/widgets/option_listtile.dart';
import 'package:movies_mod/presentation/profile/widgets/profile_tile.dart';
import 'package:movies_mod/presentation/profile/widgets/progress_xp.dart';
import 'package:movies_mod/presentation/profile/widgets/rank_details.dart';
import 'package:movies_mod/presentation/profile/widgets/watch_items.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: backgroundDecoration(),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 24, top: 16, bottom: 16).r,
          child: Text(
            'Profile',
            style: ktextstyle20x600xwhite.copyWith(fontFamily: 'Gilroy'),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 24, top: 16, bottom: 16),
            child: Icon(
              Icons.settings_outlined,
              color: kgreyColor,
            ),
          )
        ],
      ),
      //body
      body: Container(
        height: 852.h,
        width: 393.w,
        decoration: backgroundDecoration(),
        child: ListView(
          children: [
            kheight16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0).w,
              child: SizedBox(
                height: 210.h,
                width: 346.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileDetails(),
                    kheight20,
                    const RankDetails(),
                    kheight10,
                    const ProgressXP(),
                    kheight20,
                    Text(
                      'Watch History',
                      style: ktextstyle20x600xwhite.copyWith(
                          fontSize: 14.sp, fontFamily: 'Gilroy'),
                    ),
                    kheight8,
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        WatchItems(items: 'movies', numbers: 23),
                        WatchItems(items: 'series', numbers: 5),
                        WatchItems(items: 'shows', numbers: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.h),
            const OptionsListTile(
              icon: Icons.card_giftcard_outlined,
              option: 'Rewards & referrals',
            ),
            const OptionsListTile(
              icon: Icons.history_sharp,
              option: 'Watch Later',
            ),
            const OptionsListTile(
              icon: Icons.favorite_border,
              option: 'favorites',
            ),
            const OptionsListTile(
              icon: Icons.leaderboard_outlined,
              option: 'Leaderboard',
            ),
            const OptionsListTile(
              icon: Icons.interests_outlined,
              option: 'Manage interests',
            ),
            const OptionsListTile(
              icon: Icons.wallet,
              option: 'Payment methods',
            ),
            const OptionsListTile(
              icon: Icons.language,
              option: 'Change language',
            ),
            const OptionsListTile(
              icon: Icons.local_library_sharp,
              option: 'Refer & earn',
            ),
            const OptionsListTile(
              icon: Icons.star_border,
              option: 'Rate us',
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 50).r,
              child: GestureDetector(
                child: SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: Card(
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                      side: const BorderSide(
                        width: 2,
                        color: kblueColor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'LOG OUT',
                        style: ktextstyle18w700white.copyWith(
                            fontSize: 16, fontFamily: 'Gilroy'),
                      ),
                    ),
                  ),
                ),
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomGradientAlertDialog();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
