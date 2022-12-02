import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleGraphic extends StatelessWidget {
  const CircleGraphic(
      {super.key, 
      this.circleColor = Colors.black38, 
      required this.circleRadius, this.leftPosition = 0, 
      this.rightPosition =0, this.bottomPosition = 0, 
      this.topPosition = 0 });

  final Color circleColor;
  final double circleRadius;
  final double leftPosition;
  final double topPosition;
  final double rightPosition;
  final double bottomPosition;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition.sh,
      right: rightPosition.sw,
      left: leftPosition.sw,
      bottom: bottomPosition.sh,
      child: Material(
        color: circleColor,
        shape: const CircleBorder(),
        child: Padding(padding: EdgeInsets.all(circleRadius.r)),
      ),
    );
  }
}
