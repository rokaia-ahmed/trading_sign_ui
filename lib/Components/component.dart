
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
          top: 14.h,
          bottom: 16.5.h,
          left: 14.0.w,
          right: 13.21.w,
        ),
        hintText: text ,
        hintStyle: TextStyle(
          color: const Color(0XFF969696),
          fontSize: 12.sp,
          fontWeight: FontWeight.w900,
          fontFamily: 'Mon',
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    ),
  );
}