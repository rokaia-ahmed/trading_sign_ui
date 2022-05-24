import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trading/sign_in/sigin_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(371, 800),
      builder:(context,child){
        return MaterialApp(
            debugShowCheckedModeBanner:false ,
            title: 'Flutter Demo',
            home: SignInScreen()
        );
      } ,
    );
  }
}

