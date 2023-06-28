import 'package:flutter/material.dart';

const kblueColor = Color(0xFF0771c7);
const kgreyColor = Color(0xFF9A9A9A);
const kmidgreyColor = Color(0xFF515A67);
const kyellowColor = Color(0xFFF4CA37);
const kdarkColor = Color(0xFF252525);
const kwhiteColor = Color(0xFFFFFFFF);
const kblackColor = Color(0xFF000000);
const ksilverColor = Color(0xFFCDCDCD);
const kdarkgreyblueColor = Color(0xFF2A405A);
const kpurpleColor = Color(0xFF9747FF);
const kcontainerColor = Color(0xFF2A3C52);

//Progress Bar
LinearGradient progressBarGradient() {
  return const LinearGradient(
    colors: [
      Color(0xFF667ABF),
      Color.fromRGBO(102, 122, 191, 0.5),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  );
}
