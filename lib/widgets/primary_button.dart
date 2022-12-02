import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {super.key,
      required this.labelText,
      required this.onClciked,
      this.color = const Color(0xFFef5936)});

  final String labelText;
  final void Function() onClciked;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20.r),
      color: color,
      child: InkWell(
        onTap: onClciked,
        borderRadius: BorderRadius.circular(20.r),
        child: Container(
          alignment: Alignment.center,
          height: 50.h,
          width: 373.w,
          child: Text(
            labelText.toUpperCase(),
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Material(
  //     elevation: 5,
  //     borderRadius: BorderRadius.circular(10),
  //     color: color,
  //     child: MaterialButton(
  //       onPressed: onClciked,
  //       padding: EdgeInsets.fromLTRB(4.h, 2.h, 4.h, 2.h),
  //       child: Text(
  //         labelText.toUpperCase(),
  //         style: TextStyle(
  //             fontSize: 16.sp,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.white),
  //       ),
  //     ),
  //   );
  // }
}
