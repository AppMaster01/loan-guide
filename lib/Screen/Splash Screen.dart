// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: ScreenSize.fSize_100()),
            Center(
              child: controllerImage.getPiker('assert/vector_Img.png', 70),
            ),
            SizedBox(height: ScreenSize.fSize_50()),
            controllerDiscrip.getPiker(60, """Quick Cash Easy Loan Guide""",
                0xff182032, FontWeight.w700, 6),
            SizedBox(height: ScreenSize.fSize_30()),
            controllerDiscrip.getPiker(
                90,
                """Introducing Quick Cash Easy Loan Guide, the ultimate guide application that provides comprehensive and up-to-date information on quick loan disbursement without the need for ID verification or face recognition. The Quick Borrow Money Guide helps you get information about different types of loans""",
                0xff182032,
                FontWeight.w500,
                3.5),
            SizedBox(height: ScreenSize.fSize_50()),
            GestureDetector(
              onTap: () {
                controller.showbuttonad(
                    context, '/GetStarted', '/Splash_Screen', '');
              },
              child: Container(
                width: ScreenSize.fSize_60(),
                height: ScreenSize.fSize_60(),
                decoration: const ShapeDecoration(
                    color: Color(0xFFCEEBEE),
                    shape: OvalBorder(
                      side: BorderSide(width: 2, color: Colors.white),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x99089BAB),
                        blurRadius: 5,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage(
                            'assert/Icon/6157649_arrow_double_right_icon 1.png'),
                        scale: 2.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
