import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Center(
        child: new Pages(
      text: "Page 1",
      image: 'intro1.png',
    )),
    new Center(
        child: new Pages(
      text: "Page 2",
      image: 'intro1.png',
    )),
    new Center(
        child: new Pages(
      text: "Page 3",
      image: 'intro1.png',
    )),
    new Center(
        child: new Pages(
      text: "Page 4",
      image: 'intro1.png',
    ))
  ];
  int _curr = 0;

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
              bottom: 30.h,
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
        /* floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        _list.add(
                          new Center(
                              child: new Text("New page",
                                  style: new TextStyle(fontSize: 35.0))),
                        );
                      });
                      if (_curr != _list.length - 1)
                        controller.jumpToPage(_curr + 1);
                      else
                        controller.jumpToPage(0);
                    },
                    child: Icon(Icons.add)),
                FloatingActionButton(
                    onPressed: () {
                      _list.removeAt(_curr);
                      setState(() {
                        controller.jumpToPage(_curr - 1);
                      });
                    },
                    child: Icon(Icons.delete)),
              ]) */
      ),
    );
  }
}

class Pages extends StatelessWidget {
  final text;
  final String image;
  Pages({this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        Container(
          height: 30.h,
          child: Image.asset(
            'assets/images/$image',
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
            width: 80.w,
            child: Image.asset('assets/images/boardingPage/firstText.png')),
        SizedBox(
          height: 2.h,
        ),
        Container(
            width: 80.w,
            child: Text(
              'Вы можете посмотреть на наш каталог домов и связаться с нами для строительства дома вашей мечты',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            )),
        SizedBox(
          height: 30.h,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  width: 20.w,
                  child: Image.asset('assets/images/boardingPage/forword.png')),
            ],
          ),
        )
        /*   Container(
            child: Text("Далее",
                style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: <Color>[
                          Colors.black,
                          Colors.orange
                          //add more color here.
                        ],
                      ).createShader(Rect.fromLTRB(0, 10, 0, 20))))) */
      ]),
    );
  }
}
