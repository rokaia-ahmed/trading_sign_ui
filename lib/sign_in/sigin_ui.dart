
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../Components/component.dart';
import '../Components/constants.dart';

class SignInScreen extends StatefulWidget {
 const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}
class _SignInScreenState extends State<SignInScreen> {
  int initialIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 56.53.h,
                    ),
                    Image.asset(
                      'assets/images/Frame 1.png',
                     color:const Color(0XFFFCFCFC).withOpacity(0.2),
                      height: 660.97.sp,
                      width: 610.26.sp,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Column(
                children: [
                  SizedBox(
                    height: 87.41.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 144.96.w,
                      right: 145.93.w
                    ),
                    child: Image.asset('assets/images/Frame 2.png',
                      height: 87.4.sp,
                      width: 80.11.sp,
                    ),
                  ),
                  SizedBox(
                    height: 62.2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.30.w,
                      right: 20.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                            height: 42.h,
                            width: 334.64.w,
                            decoration: BoxDecoration(
                              color:const Color(0XFFF3F9FF),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            ),
                            Positioned(
                              top: 4.h,
                              left: 6.w,
                              right: 6.w,
                              child: ToggleSwitch(
                                minWidth: 159.sp,
                                minHeight: 33.sp,
                                cornerRadius: 12.r,
                                radiusStyle: true,
                                totalSwitches: 2,
                                initialLabelIndex: initialIndex,
                                activeBgColor:const[green],
                                activeFgColor: Colors.white ,
                                inactiveBgColor: const Color(0XFFF3F9FF),
                                inactiveFgColor:green ,
                                labels:const ['Live','Paper Trading'],
                                onToggle: (index){
                                 setState(() {
                                   initialIndex =index! ;
                                 });
                                },
                              ),
                            ) ,
                          ],
                        ),
                        SizedBox(
                          height: 26.55.h,
                        ),
                        (initialIndex==0)?
                        Text('Ready to start trading with real money?',
                        style: TextStyle(
                          color: green,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        ):
                        Text('Practise with paper trading',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 26.25.h,
                        ),
                        Text('Log in',
                          style: TextStyle(
                            color: green,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            Text('Don\'t have an account?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                                onPressed:(){},
                                style: TextButton.styleFrom(
                                 minimumSize: Size.zero,
                                  padding: EdgeInsets.zero,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text('Sign Up',
                                  style: TextStyle(
                                    color: green,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 38.55.h,
                        ),
                        buildTextForm(
                          text: 'Username or Email'
                        ),
                        SizedBox(
                          height: 23.29.h,
                        ),
                        buildTextForm(
                            text: 'Password',
                            icon:  Icon(Icons.visibility_off_outlined,
                             color: const Color(0Xff969696),
                              size: 22.14.sp,
                            ),
                        ),
                        SizedBox(
                          height: 24.26.h,
                        ),
                        Text('Forget your username/password?',
                          style: TextStyle(
                            color: green,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 39.9.h,
                        ),
                        Center(
                          child: MaterialButton(
                            height: 46.sp,
                            minWidth:133.sp ,
                            elevation: 4,
                            //focusElevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            onPressed: (){},
                            color: green,
                            child: Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
    );
  }

}



