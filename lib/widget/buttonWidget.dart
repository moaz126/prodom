import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class FirstButton extends StatelessWidget {
  final String text;
  FirstButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80.w,
        height: 6.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [HexColor('#654321'), HexColor('#C06912')]),
            borderRadius: BorderRadius.circular(30)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
