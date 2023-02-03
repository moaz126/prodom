import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:prodom/Screens/OpeningScreen/onboarding.dart';
import 'package:prodom/widget/buttonWidget.dart';
import 'package:sizer/sizer.dart';

import '../../constants/globalVariable.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: Get.height,
            child: Image.asset(
              'assets/images/firstPageImage.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 35.h,
            left: 30.w,
            right: 30.w,
            child: Column(
              children: [
                Container(
                  width: 70.w,
                  child: Image.asset(
                    'assets/images/firstLogo.png',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 31.h,
            left: 7.w,
            right: 7.w,
            child: Container(
              child: Image.asset(
                'assets/images/desText.png',
              ),
            ),
          ),
          Positioned(
              bottom: 20.h,
              left: 14.w,
              right: 14.w,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  setUserFirstTime(false);

                  Get.to(() => OnBoardingPage());
                },
                child: FirstButton(
                  text: 'Начать',
                ),
              )),
        ],
      ),
    );
  }
}
