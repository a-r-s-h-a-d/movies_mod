import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/core/constant/const.dart';
import 'package:movies_mod/core/style/colors/colors.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';
import 'package:movies_mod/domain/core/strings.dart';
import 'package:movies_mod/domain/home/model/home.dart';
import 'package:movies_mod/presentation/widgets/hd.dart';

class Carousel extends StatelessWidget {
  final List<Home>? trendingThisWeek;
  final int currentIndex;
  const Carousel({
    super.key,
    required this.trendingThisWeek,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Treding this week', style: ktextstyle18w700white),
        kheight10,
        //carousel slider => Trending this week
        CarouselSlider(
          carouselController: carouselController,
          items: trendingThisWeek!.take(6).map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      width: double.infinity,
                      margin: EdgeInsets.only(right: 8.r),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r)),
                      child: Image.network(
                        '$imageAppendUrl${i.backdropPath}',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 150.h,
                      left: 16.w,
                      bottom: 8.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 300.w,
                            child: Text(
                              i.title,
                              style: TextStyle(
                                color: ksilverColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const HD(),
                              kwidth5,
                              Text(
                                '${DateTime.parse(i.releasedDate).year}',
                                style: ktextstyle12grey.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              kwidth5,
                              Text(
                                '17+',
                                style: ktextstyle12grey.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 200.h,
            autoPlay: true,
            viewportFraction: 0.96,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) {
              BlocProvider.of<HomeBloc>(context)
                  .add(HomeEvent.updateCarouselIndex(index: index));
            },
          ),
        ),
        SizedBox(height: 6.h),
        //position seeker
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            6,
            (index) {
              final isActive = index == currentIndex;
              return GestureDetector(
                onTap: () async {
                  await carouselController.animateToPage(index);
                },
                child: Container(
                  width: isActive ? 24 : 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                    shape: isActive ? BoxShape.rectangle : BoxShape.circle,
                    borderRadius: isActive ? BorderRadius.circular(4) : null,
                    color: isActive ? ksilverColor : kgreyColor,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
