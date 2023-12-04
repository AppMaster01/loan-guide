// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Media_Qury/Media.dart';
import '../Ad Controller/My_Controller.dart';
import '../Widget_Controller/Controller.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  MyAppController myAppController = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Center(
                  child: controllerImage.getPiker('assert/Vector 1.png', 100)),
              Positioned(
                bottom: 0,
                child: Center(
                    child: controllerImage.getPiker('assert/vector.png', 80)),
              ),
            ],
          ),
          SizedBox(height: ScreenSize.fSize_20()),
          controllerTextlibra
              .getPiker("""Cash Loan Guide""", 0xff089BAB, FontWeight.w700, 10)
        ],
      ),
    );
  }
}
