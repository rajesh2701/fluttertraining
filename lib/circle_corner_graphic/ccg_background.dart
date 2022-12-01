import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: const <Widget>[
          //WavyFooter(),
          //const CirclePink(),
          //const CirclePink2(),
          //CircleShape(widthOffset: 140.w, heightOffset: -280.h, circleRadius: 250.r),
          Circle(widthOffset: 30, heightOffset: -120, circleRadius: 120),
          Circle(widthOffset: 120, heightOffset: -30, circleRadius: 120)
          //CircleYellow(),
        ],
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
        child: Material(
          color: circleColor,
          shape: const CircleBorder(),
          child: Padding(padding: EdgeInsets.all(circleRadius)),
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
