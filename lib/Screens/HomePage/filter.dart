import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/widget/buttonWidget.dart';
import 'package:sizer/sizer.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> items = [
    'мансардные',
    '2-этажные',
    '1-этажные',
    'с подвалом',
    'с цоколем',
  ];
  List<String> items1 = [
    'модерн',
    'современный',
    'классический',
    'минимализм',
    'барнхаус',
    'хай-тек',
    'европейский',
    'итальянский',
  ];
  List<String> items2 = [
    'навес',
    'зимний сад',
    'терраса на 1-ом этаже',
    'терраса на 2-ом этаже',
    'балкон',
  ];
  List<String> items3 = [
    'газобетон',
    'кирпич',
    'керамические блоки',
    'пеноблоки',
    'пенобетон',
  ];
  List<String> items4 = [
    '1 камин',
    'комната с ванной',
    'хозяйская спальня',
    'личная гардеробная',
  ];
  List<String> items5 = [
    'штукатурка',
    'с деревом на фасадах',
    'с кирпичными фасадами',
    'с плиткой на фасадах',
  ];
  List<String> items6 = [
    '2-скатная',
    'сложная',
    '4-скатная',
    'плоская',
    '1-скатная',
  ];
  List<String> items7 = [
    'ленточный монолитный',
    'монолитная плита',
  ];
  List<String> items8 = [
    '1 санузел',
    '2 санузла',
    '3 санузла',
  ];
  Widget dropdown(List<String> item) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 2),
      width: 130,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color(0xffe8e8e8),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          iconSize: 25,
          itemHeight: null, isExpanded: true,
          isDense: true,
          decoration: InputDecoration.collapsed(
            hintText: '',
          ),
          hint: Text(
            'выбрать',
            style: TextStyle(fontSize: 12),
          ),

          // Array list of items
          items: item.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(
                item,
                style: TextStyle(fontSize: 12),
              ),
            );
          }).toList(),

          onChanged: (newValue) {
            setState(() {});
          },
        ),
      ),
    );
  }

  Widget text(String text) {
    return Row(
      children: [
        Container(
          // mBHk (14:100)
          width: 130,
          height: 14,
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w400,
              color: Color(0xff000000),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset('assets/icons/close.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //main row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //left col
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        text('Общая площадь (m²)'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              // rectangle1KJS (14:105)
                              width: 60,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 8),
                                    border: InputBorder.none,
                                    hintText: '0 - 100',
                                    hintStyle: TextStyle(fontSize: 12)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // rectangle1KJS (14:105)
                              width: 60,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 8),
                                    border: InputBorder.none,
                                    hintText: '0 - 100',
                                    hintStyle: TextStyle(fontSize: 12)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              // rectangle1KJS (14:105)
                              width: 60,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 8),
                                    border: InputBorder.none,
                                    hintText: '0 - 100',
                                    hintStyle: TextStyle(fontSize: 12)),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // rectangle1KJS (14:105)
                              width: 60,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 8),
                                    border: InputBorder.none,
                                    hintText: '0 - 100',
                                    hintStyle: TextStyle(fontSize: 12)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        text('Этажи'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items),
                        SizedBox(
                          height: 10.0,
                        ),
                        text('Архитектурный стиль'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items1),
                        SizedBox(
                          height: 10,
                        ),
                        text('Спальни'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              // rectangle7dLv (14:122)
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xff956b00),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              // rectangle7dLv (14:122)
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Color(0xff956b00),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              // rectangle7dLv (14:122)
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '3',
                                style: TextStyle(
                                  color: Color(0xff956b00),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              // rectangle7dLv (14:122)
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '4',
                                style: TextStyle(
                                  color: Color(0xff956b00),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              // rectangle7dLv (14:122)
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Color(0xffe8e8e8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '5+',
                                style: TextStyle(
                                  color: Color(0xff956b00),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        text('Фасад и форма дома'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items2),
                      ],
                    ),
//divider
                    Container(
                      // rectangle19R94 (14:166)
                      width: 1,
                      height: 380,
                      decoration: BoxDecoration(
                        color: Color(0xff000000),
                      ),
                    ),
//right col
                    Column(
                      children: <Widget>[
                        text('Конструкция стен'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items3),
                        SizedBox(
                          height: 10,
                        ),
                        text('Тип планировки'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items4),
                        SizedBox(
                          height: 10,
                        ),
                        text('Материалы фасадов'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items5),
                        SizedBox(
                          height: 10,
                        ),
                        text('Тип кровли'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items6),
                        SizedBox(
                          height: 10,
                        ),
                        text('Тип фундамента'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items7),
                        SizedBox(
                          height: 10,
                        ),
                        text('Количество санузлов'),
                        SizedBox(
                          height: 10,
                        ),
                        dropdown(items8),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 35,
                    width: 50.w,
                    child: FirstButton(text: 'ФИЛЬТР')),
              ],
            )),
      ),
    );
  }
}
