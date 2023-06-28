import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/core/style/textstyle/textstyle.dart';

class MainCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String overview;

  const MainCard({
    required this.imageUrl,
    Key? key,
    required this.title,
    required this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 215.h,
      width: 107.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 142.h,
            width: 107.w,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            title,
            maxLines: 2,
            style: ktextStyle600x14xsilver,
          ),
          Text(
            overview,
            style: ktextStyle10x400xgrey,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
