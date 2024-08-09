import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_bold_text.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_regular_text.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_semibold_text.dart';
import 'package:prctical_exam/app/components/custom_button/custom_button.dart';
import 'package:prctical_exam/app/them/color_them.dart';
import 'package:prctical_exam/app/view/home/home_controller/home_controller.dart';
import 'package:prctical_exam/app/view/home/model/home_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customBoldText(name: "Hello,\nRonald richards 👋"),
                  SvgPicture.asset(
                    "assets/images/bell.svg",
                    height: 36.h,
                    width: 36.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
              child: Stack(
                children: [
                  Image.asset("assets/images/medicine_banner.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h, top: 22.h),
                    child: customBoldText(
                        name: "20% off on any \nmedicine", fontSize: 20.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80.h, left: 21.h),
                    child: CustomButton(name: "Buy now", onTap: () {}),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                // primary: true,
                // shrinkWrap: false,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customBoldText(
                                name: "New Products", fontSize: 18.sp),
                            customRegularText(name: "See all"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 232.h,
                        child: ListView.builder(
                          // primary: false,
                          // shrinkWrap: true,
                          itemCount: controller.newProduct.length,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            HomeModel data = controller.newProduct[index];
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 16.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: primaryWight,
                                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 15,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                     alignment: Alignment.topRight ,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x14000000),
                                                blurRadius: 16.r,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ]
                                          ),
                                            child: SvgPicture.asset("${data.image}",)),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 46.h,vertical: 16.h),
                                          child: Image.asset("${data.subImage}",height: 82.h,),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: customRegularText(name: "${data.name}"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h,top: 8.h),
                                      child: customSemiBoldText(name: "${data.price}"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customBoldText(
                                name: "Popular Products", fontSize: 18.sp),
                            customRegularText(name: "See all"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 232.h,
                        child: ListView.builder(
                          // primary: false,
                          // shrinkWrap: true,
                          itemCount: controller.popularProduct.length,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            HomeModel data = controller.popularProduct[index];
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 16.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: primaryWight,
                                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 15.r,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ]
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.toNamed("medicine");
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                       alignment: Alignment.topRight ,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0x14000000),
                                                  blurRadius: 16.r,
                                                  offset: Offset(0, 4),
                                                  spreadRadius: 0,
                                                )
                                              ]
                                            ),
                                              child: SvgPicture.asset("${data.image}",)),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 46.h,vertical: 16.h),
                                            child: Image.asset("${data.subImage}",height: 82.h,),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: customRegularText(name: "${data.name}"),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h,top: 8.h),
                                        child: customSemiBoldText(name: "${data.price}"),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customBoldText(
                                name: "Recommended Products", fontSize: 18.sp),
                            customRegularText(name: "See all"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 232.h,
                        child: ListView.builder(
                          // primary: false,
                          // shrinkWrap: true,
                          itemCount: controller.recProduct.length,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            HomeModel data = controller.recProduct[index];
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 16.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: primaryWight,
                                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 15.r,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                     alignment: Alignment.topRight ,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x14000000),
                                                blurRadius: 16.r,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ]
                                          ),
                                            child: SvgPicture.asset("${data.image}",)),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 46.h,vertical: 16.h),
                                          child: Image.asset("${data.subImage}",height: 82.h,),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: customRegularText(name: "${data.name}"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h,top: 8.h),
                                      child: customSemiBoldText(name: "${data.price}"),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customBoldText(
                                name: "Article for you", fontSize: 18.sp),
                            customRegularText(name: "See all"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 282.h,
                        child: ListView.builder(
                          // primary: false,
                          // shrinkWrap: true,
                          itemCount: controller.articleProduct.length,
                          padding: EdgeInsets.symmetric(horizontal: 8.h),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            HomeModel data = controller.articleProduct[index];
                            return Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 8.h,vertical: 16.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: primaryWight,
                                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x19000000),
                                        blurRadius: 15.r,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      ),
                                    ]
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 12.h,left: 12.h,right: 12.h,bottom: 8.h),
                                      child: Image.asset("${data.subImage}",height: 134.h,),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: customSemiBoldText(name: "${data.name}",fontSize: 17.sp),
                                    ),
                                    Padding(
                                      padding:  EdgeInsets.only(left: 12.h,right: 16.h,top: 8.h),
                                      child: customRegularText(name: "${data.title}",fontSize: 13.sp),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 12.h,),
                                      child: Row(
                                        children: [
                                          customRegularText(name: "${data.date}"),
                                          customRegularText(name: "${data.time}")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
