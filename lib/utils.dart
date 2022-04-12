// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// colors
Color buttonColor = Colors.black;
Color lightTextColor = Colors.white;
Color primaryColor = Colors.black;
Color secondaryColor = Colors.red;

//textstyles
TextStyle generalTextStyle = TextStyle(fontSize: 17, color: Colors.black);
TextStyle headingTextStyle =
    TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold);

// widgets
class Chapter extends StatelessWidget {
  String thumbNail, name, duration;
  Icon icon;
  Chapter(
      {required this.duration,
      required this.name,
      required this.icon,
      required this.thumbNail});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor, width: 2.w),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2.w),
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Image.asset(
              "assets/$thumbNail",
              height: 70,
            ),
          ),
          Column(
            children: [Text(name), Text(duration)],
          ),
          CircleAvatar(
            backgroundColor: primaryColor,
            foregroundColor: secondaryColor,
            child: IconButton(icon: icon, onPressed: () {}),
          )
        ]),
      ),
    );
  }
}
