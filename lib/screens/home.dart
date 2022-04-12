// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tutorial_app/screens/flutterdev.dart';
import 'package:tutorial_app/utils.dart';
import 'package:getwidget/getwidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imageList = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
                body: Padding(
                    padding: EdgeInsets.only(
                        top: 10.h, bottom: 140.h, left: 10.h, right: 10.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset("assets/logo.png", height: 30.h),
                                  SizedBox(width: 10.w),
                                  Text(
                                    "Tutorial App",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.more_vert))
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              width: double.infinity,
                              child: Padding(
                                  padding: EdgeInsets.all(8.sp),
                                  child: Column(
                                    children: [
                                      Text("Welcome User!",
                                          style: generalTextStyle),
                                      Text("12 Courses completed.",
                                          style: generalTextStyle)
                                    ],
                                  )),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: primaryColor, width: 2.w),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                            ),
                          ),
                          GFCarousel(
                            hasPagination: true,
                            pagerSize: 10,
                            items: imageList.map(
                              (url) {
                                return Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 25, horizontal: 10),
                                  child: Image.asset(url,
                                      fit: BoxFit.cover,
                                      width: double.infinity),
                                );
                              },
                            ).toList(),
                            onPageChanged: (index) {
                              setState(() {
                                index;
                              });
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.sp),
                            child: Text("Courses", style: headingTextStyle),
                          ),
                          SizedBox(
                            height: 50.h,
                            child: AppBar(
                              backgroundColor: primaryColor,
                              bottom: TabBar(
                                indicatorColor: secondaryColor,
                                tabs: [
                                  Tab(icon: Text("Purchased")),
                                  Tab(icon: Text("All")),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: TabBarView(children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: primaryColor, width: 2.w)),
                                child: Padding(
                                  padding: EdgeInsets.all(16.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/flutterlogo.png",
                                          height: 50),
                                      Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Flutter Development"),
                                            Text("3/14 chapters completed")
                                          ]),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      FlutterCourse()));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.all(3.sp),
                                          child: Text("Continue"),
                                        ),
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
                                ),
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: primaryColor, width: 2.w)),
                                  child: Center(
                                    child: Text(
                                      'All',
                                    ),
                                  ))
                            ]),
                          ),
                        ])))));
  }
}
