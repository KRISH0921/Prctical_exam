import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_bold_text.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_regular_text.dart';
import 'package:prctical_exam/app/components/custom_all_text/custom_semibold_text.dart';
import 'package:prctical_exam/app/components/custom_button/custom_sub_botton.dart';
import 'package:prctical_exam/app/them/color_them.dart';

class MedicinesDetails extends StatefulWidget {
  const MedicinesDetails({super.key});

  @override
  State<MedicinesDetails> createState() => _MedicinesDetailsState();
}

class _MedicinesDetailsState extends State<MedicinesDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 16.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset("assets/images/Arow.svg")),
                    SvgPicture.asset("assets/images/heart.svg"),
                  ],
                ),
              ),
             Expanded(
               child: ListView(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(top: 44.h),
                     child: Image.asset("assets/images/DoloStrip.png",height:200.h,),
                   ),
                   SizedBox(height: 88.h,),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 8.h),
                     child: Container(
                       height: 95.h,
                       decoration: BoxDecoration(
                           border: Border.all(
                               color: primaryLightNess
                           ),
                           borderRadius: BorderRadius.all(Radius.circular(10.r))
                       ),
                       child: Column(
                         children: [
                           Padding(
                             padding: EdgeInsets.only(left: 8.h,right: 8.h,top: 16.h),
                             child: Row(
                               children: [
                                 customBoldText(name: "Dolo-650 Strip of 15 Tablets",fontSize: 20.sp,),
                                 SizedBox(width:18.h,),
                                 customBoldText(name: "\$80.00",fontSize: 17.sp,)
                               ],
                             ),
                           ),
                           Padding(
                             padding: EdgeInsets.only(left: 8.h,top: 12.h),
                             child: Row(
                               children: [
                                 SvgPicture.asset("assets/images/star.svg"),
                                 customRegularText(name: "4.0 (4.2k reviews)",fontSize: 14.h)
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 16.h,),
                   Padding(
                     padding: EdgeInsets.symmetric(horizontal: 8.h),
                     child: Container(
                       height: 460.h,
                       decoration: BoxDecoration(
                           border: Border.all(
                               color: primaryLightNess
                           ),
                           borderRadius: BorderRadius.all(Radius.circular(10.r))
                       ),
                       child: Padding(
                         padding: EdgeInsets.only(left: 16.h,top: 16.h,right: 21.h),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             customBoldText(name: "Product details",fontSize: 20.sp),
                             customRegularText(name: "Lansoprazole reduces the amount of acid "
                                 "\nyour stomach makes. It's used for indigestion,"
                                 "\nheartburn acid reflux and gastroesophageal-"
                                 "\nreflux-disease (GORD). Lansoprazole is also "
                                 "\ntaken to prevent and treat stomach ulcers.",fontSize: 17.sp),
                             customSemiBoldText(name: "Dose",fontSize: 16.sp),
                             customRegularText(name: "Indigestion is 15mg to 30mg a day \nAcid reflux is 15mg to 30mg a day \nStomach ulcers is 15mg to 30mg a day"),
                             customSemiBoldText(name: "Side Effect",fontSize: 16.sp),
                             customRegularText(name: "Common side effect: headaches, feeling sick, "
                                 "\ndiarrhoea or being sick (vomiting), stomach pain,"
                                 "\nconstipation, wind, itchy skin rashes, feeling dizzy or "
                                 "\ntired, dry mouth or throat....",fontSize: 14.sp),
                             customRegularText(name: "See less",fontSize: 14.sp,color: primaryMeadow)
                           ],
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
              Padding(
                padding:  EdgeInsets.only(top: 24.h,left: 16.h,right: 16.h,bottom: 12.h),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomSubButton(name: "Add to cart",
                          fontSize: 18.sp,
                          onTap: (){}),
                    ),
                    SizedBox(width: 16.h,),
                    Expanded(
                      child: CustomSubButton(name: "Buy now",
                          textColor: primaryWight,buttonColor: primaryMeadow,
                          fontSize: 18.sp,
                          onTap: (){}),
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
