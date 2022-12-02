import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundNew extends StatelessWidget {
  const BackgroundNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: const [],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ScreenUtil().orientation == Orientation.portrait
                ? Positioned(
                    top: -0.25.sh,
                    left: 0.6.sw,
                    child: Material(
                      color: Colors.black26,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0)),
                      child: Padding(padding: EdgeInsets.all(200.r)),
                    ),
                  )
                : Positioned(
                    top: -0.2.sh,
                    left: 0.9.sw,
                    child: Material(
                      color: Colors.black26,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0)),
                      child: Padding(padding: EdgeInsets.all(200.r)),
                    ),
                  ),
            ScreenUtil().orientation == Orientation.portrait
                ? Positioned(
                    top: -0.06.sh,
                    left: 0.8.sw,
                    child: Material(
                      color: Colors.black26,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0)),
                      child: Padding(padding: EdgeInsets.all(0.4.sw)),
                    ),
                  )
                : Positioned(
                    top: -0.1.sh,
                    left: 0.92.sw,
                    child: Material(
                      color: Colors.black26,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.black, width: 1.0)),
                      child: Padding(padding: EdgeInsets.all(0.2.sh)),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

class CircleShape extends StatelessWidget {
  const CircleShape(
      {super.key,
      this.alignMent = Alignment.topRight,
      required this.widthOffset,
      required this.heightOffset,
      required this.circleRadius,
      this.circleColor = Colors.black38});

  final AlignmentGeometry alignMent;
  final double widthOffset;
  final double heightOffset;
  final double circleRadius;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignMent,
      child: Transform.translate(
        offset: Offset(widthOffset, heightOffset),
        child: CircleAvatar(
          backgroundColor: circleColor,
          radius: circleRadius,
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle(
      {super.key,
      this.alignMent = Alignment.topRight,
      required this.widthOffset,
      required this.heightOffset,
      required this.circleRadius,
      this.circleColor = const Color.fromRGBO(110, 190, 69, 50)});

  final AlignmentGeometry alignMent;
  final double widthOffset;
  final double heightOffset;
  final double circleRadius;
  final Color circleColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignMent,
      child: Transform.translate(
        offset: Offset(widthOffset.w, heightOffset),
        child: Material(
          color: circleColor,
          shape: const CircleBorder(),
          child: Padding(padding: EdgeInsets.all(circleRadius.r)),
        ),
      ),
    );
  }
}

class CirclePink extends StatelessWidget {
  const CirclePink({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Transform.translate(
        offset: const Offset(30.0, -120.0),
        child: const Material(
          color: Colors.black26,
          shape:
              CircleBorder(side: BorderSide(color: Colors.black, width: 1.0)),
          child: Padding(padding: EdgeInsets.all(120)),
        ),
      ),
    );
  }
}

class CirclePink2 extends StatelessWidget {
  const CirclePink2({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Transform.translate(
        offset: const Offset(120.0, -30.0),
        child: const Material(
          color: Colors.black26,
          shape:
              CircleBorder(side: BorderSide(color: Colors.black, width: 1.0)),
          child: Padding(padding: EdgeInsets.all(120)),
        ),
      ),
    );
  }
}
