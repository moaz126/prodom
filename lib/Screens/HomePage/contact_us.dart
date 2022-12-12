import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/favorite.dart';
import 'package:prodom/Screens/HomePage/help.dart';
import 'package:prodom/Screens/HomePage/homePage.dart';
import 'package:sizer/sizer.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  List<String> iconList = [
    'assets/images/instagram.png',
    'assets/images/whatsapp.png',
    'assets/images/telegram.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  // rectangle27CpM (8:65)
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(0, 1),
                      colors: <Color>[Color(0xffb98500), Color(0xff694b00)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Контакты',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // rectangle28DFB (9:66)
                  width: 70.w,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff976d00),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Container(
                            // rectangle21YV3 (8:32)
                            width: double.infinity,
                            height: 122,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xd8e3e3e3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    iconList[index],
                                    height: 84,
                                    width: 84,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.to(() => Help());
                                        },
                                        child: Container(
                                          // rectangle24KCq (8:44)
                                          alignment: Alignment.center,
                                          width: 160,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color(0xff956b00),
                                          ),
                                          child: Text(
                                            'Связаться с нами',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Color(0xffffffff),
                                              decorationColor:
                                                  Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                bottom: 30,
                left: 20,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Get.off(() => HomePage());
                      },
                      child: Container(
                        // rectangle7aow (7:32)
                        width: 107,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xff956b00),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/home.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.off(() => Favorite());
                      },
                      child: Container(
                        // rectangle17Ryf (8:17)
                        width: 107,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xff956b00),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/homePage/heart.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        // rectangle207C1 (8:28)
                        width: 107,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xffb48200),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/phone.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
