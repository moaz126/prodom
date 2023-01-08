import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/help.dart';
import 'package:sizer/sizer.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      // rectangle23oFY (14:178)
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff956b00),
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/icons/forward.png',
                        height: 10,
                        width: 10,
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => AboutUs());
                },
                child: Container(
                  // Fc6 (14:170)
                  width: double.infinity,
                  height: 15,
                  child: Text(
                    'О нас',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    // rectangle20Xfg (14:169)
                    width: 50.w,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // Fc6 (14:170)
                width: double.infinity,
                height: 15,
                child: Text(
                  'Сообщить о проблеме',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    // rectangle20Xfg (14:169)
                    width: 50.w,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // Fc6 (14:170)
                width: double.infinity,
                height: 15,
                child: Text(
                  'Оставить отзыв',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    // rectangle20Xfg (14:169)
                    width: 50.w,
                    height: 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 45.h,
              ),
              Container(
                child: Image.asset('assets/icons/ProDom.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
