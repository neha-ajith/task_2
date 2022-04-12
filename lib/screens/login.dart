// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app/utils.dart';
import 'package:tutorial_app/screens/home.dart';
import 'package:tutorial_app/widgets/login_input.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/logo.png", height: 50.h),
              Text("Tutorial App",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 20.h),
              LoginInput(icon: "user", hintText: "Username"),
              LoginInput(
                  icon: "password", hintText: "Password", obscureText: true),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.h),
                  child: TextButton(
                    child:
                        Text("Login", style: TextStyle(color: lightTextColor)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Home()));
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?"),
                  TextButton(
                      onPressed: () {},
                      child: Text("Register",
                          style: TextStyle(color: Colors.black)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
