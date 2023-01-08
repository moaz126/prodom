import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/contact_us.dart';
import 'package:prodom/Screens/HomePage/favoriteHouseDetail.dart';
import 'package:prodom/Screens/HomePage/homePage.dart';
import 'package:prodom/constants/constant.dart';
import 'package:sizer/sizer.dart';

import '../../constants/globalVariable.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<String> favourite = [
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
        body: RawScrollbar(
          isAlwaysShown: true,
          radius: Radius.circular(10),
          thumbColor: primary,
          thickness: 5,
          minThumbLength: 5,
          crossAxisMargin: 5,
          mainAxisMargin: 20,
          minOverscrollLength: 5,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: favouriteList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => favroiteHouseDetail(index));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 22.0),
                        child: Stack(
                          children: [
                            Container(
                              height: 170,
                              width: 90.w,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl: favouriteList[index].thumbnail,
                                  placeholder: (context, url) => Image.asset(
                                    'assets/images/homePage/house1.png',
                                    fit: BoxFit.cover,
                                  ),
                                  errorWidget: (context, url,
                                          error) => /* Icon(Icons
                                .person) */
                                      Image.asset(
                                    'assets/images/homePage/house1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 5,
                                top: 8,
                                child: InkWell(
                                  onTap: () {
                                    favor.remove(favouriteList[index].id);
                                    favouriteList.removeAt(index);
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
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
                      Container(
                        // rectangle17Ryf (8:17)
                        width: 107,
                        height: 47,
                        decoration: BoxDecoration(
                          color: Color(0xffb48200),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/homePage/heart.png',
                            height: 24,
                            width: 24,
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
      ),
    );
  }
}
