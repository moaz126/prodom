import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/contact_us.dart';
import 'package:prodom/Screens/HomePage/favorite.dart';
import 'package:prodom/Screens/HomePage/homePage.dart';
import 'package:sizer/sizer.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
                      'О Нас',
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
                Container(
                  // FY1 (14:191)
                  width: 85.w,

                  child: Text(
                    'Надежность, экологичность и безопасность, \nэргономичность каждого сантиметра \nпространства и  исключительный дизайн — \nэто «секрет успеха», который не скрываем. \nКаталог из 200+ проектов позволяет любому \nчеловеку, независимо от возраста и стиля жизни, \nнайти дом, подходящий персонально ему.\n',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // prodomAys (15:214)
                  width: 85.w,

                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text:
                              'В сфере проектирования и строительства \nмалоэтажных домов тенденции постоянно \nменяются с течением времени – \nменяются технологии, материалы, инженерные \nсистемы, и вместе с ними – развивается и ',
                        ),
                        TextSpan(
                          text: 'ProDom',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                            color: Color(0xff000000),
                            decorationColor: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text:
                              '. \nВокруг себя мы собираем людей, которые готовы \nнепрерывно учиться, совершенствовать качество \nработы, ведь мы понимаем, насколько \nважна репутация и как тяжело ее заслужить.\n',
                        ),
                      ],
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
