import 'dart:async';

import 'package:coined_one/controller/home_screen_vew_controller.dart';
import 'package:coined_one/screen/01_home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final homeScreenViewController = Get.put(HomeScreenViewController());
  @override
  void initState() {
//Initailizing Dashboard Data
    homeScreenViewController.getDashboardData();

    Timer(Duration(milliseconds: 1200), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 156, 225),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black12,
              ),
            ],
          ),
          child: Image.asset('assets/images/logo/logo_adaptive_fore.png'),
        ),
      ),
    );
  }
}
