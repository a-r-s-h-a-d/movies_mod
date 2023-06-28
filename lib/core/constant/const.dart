import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

FirebaseAuth auth = FirebaseAuth.instance;

final kheight5 = SizedBox(height: 5.h);
final kheight8 = SizedBox(height: 8.h);
final kheight10 = SizedBox(height: 10.h);
final kheight16 = SizedBox(height: 16.h);
final kheight20 = SizedBox(height: 20.h);
final kheight24 = SizedBox(height: 24.h);
final kheight32 = SizedBox(height: 32.h);
final kheight40 = SizedBox(height: 40.h);

final kwidth5 = SizedBox(width: 5.w);
final kwidth10 = SizedBox(width: 10.w);
final kwidth20 = SizedBox(width: 20.w);
final kwidth30 = SizedBox(width: 30.w);

List<String> imageList = [
  'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/8FhKnPpql374qyyHAkZDld93IUw.jpg',
  'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/4XM8DUTQb3lhLemJC51Jx4a2EuA.jpg',
  'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/h8gHn0OzBoaefsYseUByqsmEDMY.jpg',
  'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/5YZbUmjbMa3ClvSW1Wj3D6XGolb.jpg'
];

List<String> popularMovies = [
  'https://www.themoviedb.org/t/p/w440_and_h660_face/fiVW06jE7z9YnO4trhaMEdclSiC.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/k5mQ2G1jS47fuxCjmkzFDeaNYvj.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/3IhGkkalwXguTlceGSl8XUJZOVI.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/uiFcFIjig0YwyNmhoxkxtAAVIL2.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
  'https://www.themoviedb.org/t/p/w440_and_h660_face/qnqGbB22YJ7dSs4o6M7exTpNxPz.jpg',
];
