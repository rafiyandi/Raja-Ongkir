import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/home/home_screen_province.dart';
import 'package:learn_bloc/presentation/sign_in/sign_in_page.dart';
import 'package:learn_bloc/presentation/splash_screen/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // home: SplashScreen(),
      home: HomepageProvince(),
    );
  }
}
