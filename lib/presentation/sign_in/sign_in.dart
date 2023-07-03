import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/decorations/decorations.dart';
import 'package:movies_mod/domain/core/strings.dart';
import 'package:movies_mod/presentation/sign_in/widgets/login.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(const GetPopularMovies());
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: backgroundDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Transform.scale(
                  scaleX: 1.15,
                  scaleY: 1.0,
                  child: Transform.rotate(
                    angle: 3.3,
                    child: Opacity(
                      opacity: 0.4,
                      child: SizedBox(
                        width: 350.w,
                        height: 360.h,
                        child: GridView.count(
                          crossAxisCount: 4,
                          childAspectRatio: (85.w / 140.h),
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(
                            12,
                            (index) => BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                if (state.isLoading) {
                                  return Container(
                                    color: Colors.blue,
                                    height: 138.h,
                                    width: 93.w,
                                    margin: EdgeInsets.only(
                                        right: 10.h, bottom: 10.h),
                                  );
                                }
                                if (state.hasError) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            imageList[((index - 1) % 3) + 1]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    height: 138.h,
                                    width: 93.w,
                                    margin: EdgeInsets.only(
                                      right: 10.h,
                                      bottom: 10.h,
                                    ),
                                  );
                                } else {
                                  final popularList = state.popularmovies!
                                      .map((e) =>
                                          '$imageAppendUrl${e.posterPath}')
                                      .toList();

                                  if (popularList.isEmpty) {
                                    return Container();
                                  }

                                  int listIndex =
                                      ((index - 1) % popularList.length);
                                  String imageUrl = popularList[listIndex];

                                  return Transform.rotate(
                                    angle: 3.1,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(imageUrl),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      height: 138.h,
                                      width: 93.w,
                                      margin: EdgeInsets.only(
                                          right: 10.h, bottom: 10.h),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 160.h,
                  left: 55.w,
                  child: Transform.rotate(
                    angle: -0.1,
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        'assets/images/logo.png',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Login(height: height, width: width)
          ],
        ),
      ),
    );
  }
}
