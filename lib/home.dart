import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:training/authscreens/register.dart';
import 'package:training/circle_corner_graphic/ccg_home.dart';
import 'package:training/widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrimaryButton(
                  labelText: 'Circl Graphic',
                  onClciked: () {
                    Get.to(() => const CCGHome());
                  }),
              SizedBox(
                height: 5.h,
              ),
              PrimaryButton(
                  labelText: 'Login Screen',
                  onClciked: () {
                    Get.to(() => const RegisterScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
