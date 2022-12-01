import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: const <Widget>[
              //WavyFooter(),
              CirclePink(),
              CirclePink2()
              //CircleYellow(),
            ],
          )
        ],
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
