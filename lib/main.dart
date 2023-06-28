import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_mod/application/home/home_bloc.dart';
import 'package:movies_mod/application/movie_details/movie_details_bloc.dart';
import 'package:movies_mod/domain/core/di/injectable.dart';
import 'package:movies_mod/presentation/splash/screen_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (context) => getIt<HomeBloc>()),
          BlocProvider<MovieDetailsBloc>(
              create: (context) => getIt<MovieDetailsBloc>()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Inter',
          ),
          home: const ScreenSplash(),
        ),
      ),
    );
  }
}
