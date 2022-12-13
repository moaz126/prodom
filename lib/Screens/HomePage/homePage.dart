import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/contact_us.dart';
import 'package:prodom/Screens/HomePage/favorite.dart';
import 'package:prodom/Screens/HomePage/houseDetailPage.dart';
import 'package:prodom/constants/constant.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> houseList = [
    'assets/images/homePage/house1.png',
    'assets/images/homePage/house2.png',
    'assets/images/homePage/house3.jpg',
    'assets/images/homePage/house4.jpg',
    'assets/images/homePage/house5.jpg',
    'assets/images/homePage/house6.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 25.w,
                          child:
                              Image.asset('assets/images/homePage/ProDom.png'),
                        ),
                        Container(
                          width: 10.w,
                          child: Image.asset('assets/images/homePage/menu.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: Get.width,
                    child: Text(
                      'Найди дом своей мечты!',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 19),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70.w,
                          height: 6.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: containerColor,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  height: Get.height,
                                  child: Image.asset(
                                    'assets/images/homePage/search.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Найти'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 6.h,
                          child:
                              Image.asset('assets/images/homePage/filter.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: RawScrollbar(
                      isAlwaysShown: true,
                      radius: Radius.circular(10),
                      thumbColor: primary,
                      thickness: 5,
                      minThumbLength: 5,
                      crossAxisMargin: 5,
                      minOverscrollLength: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ListView.builder(
                          itemCount: houseList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 22.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => HouseDetail());
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      width: 90.w,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          houseList[index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        right: 5,
                                        top: 8,
                                        child: Image.asset(
                                          'assets/images/homePage/heart.png',
                                          height: 22,
                                          width: 22,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 30,
                left: 20,
                child: Row(
                  children: <Widget>[
                    Container(
                      // rectangle7aow (7:32)
                      width: 107,
                      height: 47,
                      decoration: BoxDecoration(
                        color: Color(0xffb48200),
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
                      onTap: () {
                        Get.off(() => ContactUs());
                      },
                      child: Container(
                        // rectangle207C1 (8:28)
                        width: 107,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xff956b00),
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
