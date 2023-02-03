import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prodom/Screens/HomePage/contact_us.dart';
import 'package:prodom/Screens/HomePage/favorite.dart';
import 'package:prodom/Screens/HomePage/filter.dart';
import 'package:prodom/Screens/HomePage/houseDetailPage.dart';
import 'package:prodom/Screens/HomePage/menu.dart';
import 'package:prodom/Screens/model/HouseModel.dart';
import 'package:prodom/constants/constant.dart';
import 'package:sizer/sizer.dart';

import '../../constants/globalVariable.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Stream<QuerySnapshot> _stream;

  CollectionReference _reference =
      FirebaseFirestore.instance.collection('house');

  List<String> houseList = [
    'assets/images/homePage/house1.png',
    'assets/images/homePage/house2.png',
    'assets/images/homePage/house3.jpg',
    'assets/images/homePage/house4.jpg',
    'assets/images/homePage/house5.jpg',
    'assets/images/homePage/house6.jpg',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _stream = _reference.snapshots();
  }

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
                        InkWell(
                          onTap: () {
                            Get.to(Menu());
                            /*    FirebaseFirestore.instance.collection('house').add({
                              "images": ['f', 'c', 'd'],
                              "gbathroom": 2,
                              'gbedroom': 2,
                              'ghall': 2,
                              'ghalway': 2,
                              'gkitchen': 2,
                              'gliving': 2,
                              'grestroom': 2,
                              'gpantry': 2,
                              'groundL': 2,
                              'groundW': 2,
                              'gwardrobe': 2,
                              'atticL': 2,
                              'atticW': 2,
                              'abathroom': 2,
                              'abedroom': 2,
                              'ahall': 2,
                              'ahalway': 2,
                              'akitchen': 2,
                              'aliving': 2,
                              'arestroom': 2,
                              'apantry': 2,
                              'awardrobe': 2,
                              'dbathroom': 2,
                              'dbedroom': 2,
                              'dhall': 2,
                              'dhalway': 2,
                              'dkitchen': 2,
                              'dliving': 2,
                              'drestroom': 2,
                              'dpantry': 2,
                              'dwardrobe': 2,
                              'technology': 'SDGRSGRDGRDGRD',
                              'psoCost': 4445,
                              'turnkeyCost': 7444,
                            }); */
                          },
                          child: Container(
                            width: 10.w,
                            child:
                                Image.asset('assets/images/homePage/menu.png'),
                          ),
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
                        InkWell(
                          onTap: () {
                            Get.to(() => Filter());
                          },
                          child: Container(
                            height: 6.h,
                            child: Image.asset(
                                'assets/images/homePage/filter.png'),
                          ),
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
                        child: StreamBuilder<QuerySnapshot>(
                          stream: _stream,
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            //Check error
                            if (snapshot.hasError) {
                              return Center(
                                  child: Text(
                                      'Some error occurred ${snapshot.error}'));
                            }

                            //Check if data arrived
                            if (snapshot.hasData) {
                              //get the data
                              QuerySnapshot querySnapshot = snapshot.data;
                              List<QueryDocumentSnapshot> documents =
                                  querySnapshot.docs;

                              //Convert the documents to Maps
                              /*   List<Map> items = documents
                                  .map((e) => {
                                        'id': e.id,
                                        'address': e['address'],
                                        'dim': e['dimension'],
                                        'room': e['rooms'],
                                      })
                                  .toList(); */
                              houseDesignList = List<HouseModel>.from(
                                  documents.map((x) => HouseModel.fromJson(x)));
                              print('dddddddddddddddddddddddd');

                              //Display the list
                              return ListView.builder(
                                itemCount: houseDesignList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 22.0),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => HouseDetail(index));
                                        print(houseDesignList[index].ghall);
                                      },
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 170,
                                            width: 90.w,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: CachedNetworkImage(
                                                  fit: BoxFit.cover,
                                                  imageUrl:
                                                      houseDesignList[index]
                                                          .thumbnail,
                                                  placeholder: (context, url) =>
                                                      Center(
                                                          child:
                                                              CircularProgressIndicator()),
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
                                          ),
                                          Positioned(
                                              right: 5,
                                              top: 8,
                                              child: InkWell(
                                                onTap: () {
                                                  if (favor.contains(
                                                          houseDesignList[index]
                                                              .id) ==
                                                      false) {
                                                    print('object');
                                                    favor.add(
                                                        houseDesignList[index]
                                                            .id);
                                                    favouriteList.add(
                                                        houseDesignList[index]);
                                                  }
                                                  setState(() {});
                                                },
                                                child: Image.asset(
                                                  'assets/images/homePage/heart.png',
                                                  height: 22,
                                                  width: 22,
                                                  color: favor.contains(
                                                          houseDesignList[index]
                                                              .id)
                                                      ? Colors.red
                                                      : Colors.white,
                                                ),
                                              ))
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }

                            //Show loader
                            return Center(child: CircularProgressIndicator());
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
