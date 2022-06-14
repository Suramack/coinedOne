import 'package:coined_one/constants/theme/theme_data/theme_data.dart';
import 'package:coined_one/screen/00_splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coined One',
      theme: ThemeData(
        appBarTheme: appBarthemedata,
      ),
      home: const SplashScreen(),
    );
  }
}
