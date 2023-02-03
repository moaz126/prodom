import 'package:flutter/material.dart';
import 'package:prodom/Screens/model/HouseModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<HouseModel> houseDesignList = [];
List<HouseModel> favouriteList = [];
List<String> favor = [];

void setUserFirstTime(bool key) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isFirstTime", key);
}

Future getUserFirstTime() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var log = prefs.getBool("isFirstTime") ?? true;
  return log;
}