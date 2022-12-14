import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(7, 99, 93, 1),
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(7, 99, 93, 1),
          ),
          Positioned(
            top: -80.h,
            left: 240.w,
            child: Material(
              color: const Color.fromRGBO(255, 122, 48, 1),
              shape: const CircleBorder(),
              child: Padding(padding: EdgeInsets.all(154.r)),
            ),
          ),
          Positioned(
            top: 57.h,
            left: 18.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onTap: () {
                  print('GO Back clicked');
                  Get.back();
                },
              ),
            ),
          ),
          BottomQuestion(),
        ],
      ),
    );
  }
}

class BottomQuestion extends StatelessWidget {
  const BottomQuestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 1,
      child: Container(
        height: 63.h,
        width: ScreenUtil().screenWidth,
        color: const Color.fromRGBO(255, 122, 48, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Already Have an Account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromRGBO(7, 99, 93, 1)),
            )
          ],
        ),
      ),
    );
  }
}
