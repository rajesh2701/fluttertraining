import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrimaryButton(
                  labelText: 'Circl Graphic',
                  onClciked: () {
                    Get.to(() => const CCGHome());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
