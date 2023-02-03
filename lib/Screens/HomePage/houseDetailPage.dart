import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/contact_us.dart';
import 'package:prodom/constants/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/globalVariable.dart';

class HouseDetail extends StatefulWidget {
  final int index;
  HouseDetail(this.index);

  @override
  State<HouseDetail> createState() => _HouseDetailState();
}

class _HouseDetailState extends State<HouseDetail> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset('assets/images/arrowBack.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 25.h,
                      child: CarouselSlider.builder(
                        itemCount: houseDesignList[widget.index].images.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: houseDesignList[widget.index]
                                  .images[itemIndex],
                              placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                              errorWidget: (context, url,
                                      error) => /* Icon(Icons
                              .person) */
                                  Center(
                                    child: Icon(
                                      Icons.error_outline,
                                      color: Colors.red,
                                    ),
                                  )),
                        ),
                        options: CarouselOptions(
                            autoPlay: false,
                            enlargeCenterPage: true,
                            viewportFraction: 0.9,
                            aspectRatio: 2.0,
                            initialPage: 0,
                            onPageChanged: (index, reason) {
                              setState(() {
                                activeIndex = index;
                                print(activeIndex);
                              });
                            }),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 40.w,
                      /*  left: 45.w,
                      right: 45.w,
                       */
                      child: AnimatedSmoothIndicator(
                        activeIndex: activeIndex,
                        count: houseDesignList[widget.index].images.length,
                        curve: Curves.bounceInOut,
                        effect: SlideEffect(
                          spacing: 5,
                          radius: 10,
                          dotHeight: 5,
                          dotWidth: 5,
                          activeDotColor: primary,
                          dotColor: Colors.white,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 160,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: houseDesignList[widget.index].interior1,
                        placeholder: (context, url) => Image.asset(
                          'assets/images/homePage/houseMap.png',
                          fit: BoxFit.cover,
                        ),
                        errorWidget: (context, url,
                                error) => /* Icon(Icons
                              .person) */
                            Image.asset(
                          'assets/images/homePage/houseMap.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 40.w,
                          height: 15,
                          child: Text(
                            '1-ЫЙ ЭТАЖ ${houseDesignList[widget.index].groundL} / ${houseDesignList[widget.index].groundW} m²',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // m61m231m198m46m35m499m380m51m8 (9:72)
                          width: 40.w,
                          height: 108,
                          child: Text(
                            'Прихожая                 ${houseDesignList[widget.index].ghalway} m²\nГардеробная            ${houseDesignList[widget.index].gwardrobe} m²\nХолл                           ${houseDesignList[widget.index].ghall} m²\nСпальня                    ${houseDesignList[widget.index].gbedroom} m²\nВанная комната      ${houseDesignList[widget.index].gbathroom} m²\nГостиная                   ${houseDesignList[widget.index].gliving} m²\nКухня + столовая    ${houseDesignList[widget.index].gkitchen} m²\nКладовая                   ${houseDesignList[widget.index].gpantry} m²\nКомната отдыха       ${houseDesignList[widget.index].grestroom} m²\n\n',
                            style: TextStyle(
                              fontSize: 6,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          width: 40.w,
                          height: 15,
                          child: Text(
                            '1-ЫЙ ЭТАЖ ${houseDesignList[widget.index].atticL} / ${houseDesignList[widget.index].atticW} m²',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // m61m231m198m46m35m499m380m51m8 (9:72)
                          width: 40.w,
                          height: 108,
                          child: Text(
                            'Прихожая                  ${houseDesignList[widget.index].ahalway} m²\nГардеробная             ${houseDesignList[widget.index].awardrobe} m²\nХолл                            ${houseDesignList[widget.index].ahall} m²\nСпальня                     ${houseDesignList[widget.index].abedroom} m²\nВанная комната      ${houseDesignList[widget.index].abathroom} m²\nГостиная                    ${houseDesignList[widget.index].aliving} m²\nКухня + столовая    ${houseDesignList[widget.index].akitchen} m²\nКладовая                   ${houseDesignList[widget.index].apantry} m²\nКомната отдыха      ${houseDesignList[widget.index].arestroom} m²\n\n',
                            style: TextStyle(
                              fontSize: 6,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 177,
                      width: 160,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: houseDesignList[widget.index].interior2,
                        placeholder: (context, url) => Image.asset(
                          'assets/images/homePage/houseMap2.png',
                          fit: BoxFit.cover,
                        ),
                        errorWidget: (context, url,
                                error) => /* Icon(Icons
                              .person) */
                            Image.asset(
                          'assets/images/homePage/houseMap2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        Container(
                          // SFX (9:76)
                          width: 40.w,
                          height: 15,
                          child: Text(
                            'ПЛОЩАДЬ И ГАБАРИТЫ',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // m61m231m198m46m35m499m380m51m8 (9:78)
                          width: 40.w,
                          height: 108,
                          child: Text(
                            'Прихожая                 ${houseDesignList[widget.index].dhalway} m²\nГардеробная            ${houseDesignList[widget.index].dwardrobe} m²\nХолл                           ${houseDesignList[widget.index].dhall} m²\nСпальня                    ${houseDesignList[widget.index].dbedroom} m²\nВанная комната      ${houseDesignList[widget.index].dbathroom} m²\nГостиная                   ${houseDesignList[widget.index].dliving} m²\nКухня + столовая    ${houseDesignList[widget.index].dkitchen} m²\nКладовая                   ${houseDesignList[widget.index].dpantry} m²\nКомната отдыха       ${houseDesignList[widget.index].drestroom} m²\n\n',
                            style: TextStyle(
                              fontSize: 6,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          // ynm (9:77)
                          width: 40.w,
                          height: 15,
                          child: Text(
                            'ТЕХНОЛОГИЯ СТРОИТЕЛЬСТВА',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              decoration: TextDecoration.underline,
                              color: Color(0xff000000),
                              decorationColor: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // Mdf (9:79)
                          width: 40.w,
                          height: 54,
                          child: Text(
                            houseDesignList[widget.index].technology,
                            // 'Стены  - газобетон/керамические блоки/пеноблоки/пенобетон\nТип фундамента - ленточный сборно-монолитный\nКровля - цементно-песчаная черепица/металлочерепица/керамическая черепица\nТехнология - каменный\nТип перекрытия - монолитное\n',
                            style: TextStyle(
                              fontSize: 6,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // JDK (9:91)

                      height: 15,
                      child: Text(
                        'Стоимость под ПСО - ${houseDesignList[widget.index].psoCost}\$',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          decoration: TextDecoration.underline,
                          color: Color(0xff000000),
                          decorationColor: Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      // JDK (9:91)

                      height: 15,
                      child: Text(
                        'Стоимость под ключ - ${houseDesignList[widget.index].turnkeyCost}\$',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          decoration: TextDecoration.underline,
                          color: Color(0xff000000),
                          decorationColor: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Get.off(() => ContactUs());
                },
                child: Container(
                  // group2QBX (86:3)

                  padding: EdgeInsets.fromLTRB(41, 10, 62, 10),
                  width: 90.w,
                  decoration: BoxDecoration(
                    color: Color(0xff956b00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // download21removebgpreview2TQh (9:94)
                        margin: EdgeInsets.fromLTRB(0, 1, 22, 0),
                        width: 24,
                        height: 24,
                        child: Image.asset(
                          'assets/images/phone.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        // NGm (9:95)
                        'Связаться с нами',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          decoration: TextDecoration.underline,
                          color: Color(0xffffffff),
                          decorationColor: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
