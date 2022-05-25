
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

Widget buildTextForm({ required String text,Widget? icon} ){
  return Container(
    width: 335.sp,
    height: 46.sp,
    decoration: BoxDecoration(
      color: textFieldColor,
      boxShadow: [
        BoxShadow(
            blurRadius: 11,
            offset: const Offset(1,1),
            color: Colors.grey.withOpacity(0.5)
        ),
      ],
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: TextFormField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        suffixIcon: icon,
        contentPadding: EdgeInsets.only(
          top: 15.h,
          bottom: 18.h,
          left: 14.0.w,
        ),
        hintText: text ,
        hintStyle: TextStyle(
          color: const Color(0XFF969696),
          fontSize: 12.sp,
          fontWeight: FontWeight.w800,
          fontFamily: 'Mon',
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}