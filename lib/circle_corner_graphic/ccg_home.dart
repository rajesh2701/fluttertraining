import 'package:flutter/material.dart';
import 'package:training/circle_corner_graphic/ccg_background.dart';
import 'package:training/circle_corner_graphic/ccg_login_ui.dart';

class CCGHome extends StatelessWidget {
  const CCGHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Background(),
    );
  }
}
