// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginInput extends StatelessWidget {
  final String icon, hintText;
  final bool obscureText;

  LoginInput(
      {Key? key,
      required this.icon,
      required this.hintText,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Color(0xffEDEDED),
            ),
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0, 1.6),
              blurRadius: 3,
              spreadRadius: -2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
          child: Row(
            children: [
              Image.asset(
                "assets/$icon.png",
              ),
              SizedBox(width: 10.w),
              Expanded(
                  child: TextFormField(
                      style: TextStyle(fontSize: 16.sp),
                      obscureText: obscureText,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                          hintStyle: TextStyle(
                            color: Color(0xff22332D).withOpacity(0.55),
                          )))),
            ],
          ),
        ),
      ),
    );
  }
}
