// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app/utils.dart';

class FlutterCourse extends StatelessWidget {
  const FlutterCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: secondaryColor,
              tabs: [
                Tab(icon: Text("Chapters")),
                Tab(icon: Text("Practice")),
                Tab(icon: Text("Tests")),
              ],
            ),
            title: const Text('Flutter Development'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Chapter(
                      duration: "10:30 minutes",
                      name: "Installation",
                      thumbNail: "install.jpg",
                      icon: Icon(Icons.done),
                    ),
                    SizedBox(height: 20.h),
                    Chapter(
                      duration: "15:00 minutes",
                      name: "Basics of Dart",
                      thumbNail: "dart.png",
                      icon: Icon(Icons.play_arrow),
                    ),
                    SizedBox(height: 20.h),
                    Chapter(
                      duration: "20:00 minutes",
                      name: "UI Basics",
                      thumbNail: "ui.png",
                      icon: Icon(Icons.lock),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: primaryColor, width: 2.w),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Login page UI", style: generalTextStyle),
                                SizedBox(width: 20.w),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Start"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            primaryColor),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            lightTextColor),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/login.jpg", height: 150),
                                SizedBox(width: 20.w),
                                Image.asset("assets/home.jpg", height: 150)
                              ],
                            ),
                            SizedBox(height: 10.w),
                            Text(
                              "Estimated time: 1 day",
                              style: generalTextStyle,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Center(child: Text("Tests")),
            ],
          ),
        ),
      ),
    );
  }
}
