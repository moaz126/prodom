import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prodom/Screens/OpeningScreen/openingPage.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  getstate() async {
    Timer(Duration(seconds: 2), () => Get.to(() => OpeningScreen()));
  }

  @override
  void initState() {
    super.initState();
    getstate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, 0.0),
            end: Alignment(0.279, 0.96),
            colors: [HexColor('#654321').withOpacity(0.6), Colors.black],
          ),
        ),
        child: SizedBox(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Image.asset(
            "assets/images/splashLogo.png",
            height: 30,
            width: 60,
            fit: BoxFit.contain,
          ),
        )));
  }
}
