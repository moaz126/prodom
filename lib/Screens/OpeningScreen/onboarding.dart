import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widget/buttonWidget.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

int _curr = 0;
PageController controller = PageController();

class _OnBoardingPageState extends State<OnBoardingPage> {
  List<Widget> _list = <Widget>[
    new Center(
        child: new Pages(
      text:
          "Вы можете посмотреть на наш каталог домов и связаться с нами для строительства дома вашей мечты",
      image: 'intro1.png',
      textImage: 'Text1.png',
      last: true,
    )),
    new Center(
        child: new Pages(
      text:
          "У нас вы можете посмотреть дома в разных архитектурных стилях и выбрать тот который вам понравилаь",
      image: 'intro2.png',
      textImage: 'Text2.png',
      last: true,
    )),
    new Center(
        child: new Pages(
      text: "Дома в стиле: Барнхаус, Классический, Хай-Тек, Минимализм...",
      image: 'intro3.png',
      textImage: 'Text3.png',
      last: true,
    )),
    new Center(
        child: new LastPages(
      text: "Чего ты ждешь? Твой дом мечты ты найдешь у нас",
      image: 'intro1.png',
      textImage: 'Text4.png',
      last: false,
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              stops: [0.1, 0.6],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.black, HexColor('#654321').withOpacity(0.5)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.center,
          children: [
            PageView(
              children: _list,
              scrollDirection: Axis.horizontal,

              // reverse: true,
              // physics: BouncingScrollPhysics(),
              controller: controller,
              onPageChanged: (num) {
                setState(() {
                  _curr = num;
                });
              },
            ),
            Positioned(
              bottom: 35.h,
              child: AnimatedSmoothIndicator(
                activeIndex: _curr,
                count: 4,
                curve: Curves.bounceInOut,
                effect: SlideEffect(
                  spacing: 30,
                  radius: 10,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Color.fromARGB(255, 153, 102, 26),
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  final String image;
  final String textImage;
  final bool last;
  Pages(
      {this.text,
      required this.image,
      required this.textImage,
      required this.last});
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        last
            ? Container(
                height: 30.h,
                child: Image.asset(
                  'assets/images/$image',
                  fit: BoxFit.fitHeight,
                ),
              )
            : Column(
                children: [
                  SizedBox(
                    height: 7.h,
                  ),
                  Container(
                    height: 23.h,
                    width: 60.w,
                    child: Image.asset(
                      'assets/images/boardingPage/ProDom.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: 65.w,
            child: Image.asset('assets/images/boardingPage/$textImage')),
        SizedBox(
          height: 1.h,
        ),
        Container(
            width: 80.w,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )),
        SizedBox(
          height: 36.h,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  if (_curr != 4 - 1)
                    controller.jumpToPage(_curr + 1);
                  else
                    controller.jumpToPage(0);
                },
                child: Container(
                    width: 15.w,
                    child:
                        Image.asset('assets/images/boardingPage/forword.png')),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class LastPages extends StatelessWidget {
  final text;
  final String image;
  final String textImage;
  final bool last;
  LastPages(
      {this.text,
      required this.image,
      required this.textImage,
      required this.last});
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        last
            ? Container(
                height: 30.h,
                child: Image.asset(
                  'assets/images/$image',
                  fit: BoxFit.fitHeight,
                ),
              )
            : Column(
                children: [
                  SizedBox(
                    height: 7.h,
                  ),
                  Container(
                    height: 23.h,
                    width: 60.w,
                    child: Image.asset(
                      'assets/images/boardingPage/ProDom.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: 65.w,
            child: Image.asset('assets/images/boardingPage/$textImage')),
        SizedBox(
          height: 1.h,
        ),
        Container(
            width: 80.w,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: FirstButton(
                text: 'Начать',
              ),
            ),
          ],
        )
      ]),
    );
  }
}
