import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Google_Ads.dart';
import '../../Media_Qury/Media.dart';

class Discrip extends StatefulWidget {
  const Discrip({super.key});

  @override
  State<Discrip> createState() => _DiscripState();
}

class _DiscripState extends State<Discrip> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Discrip', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Discrip', '');
        }, '${abc[0]}'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenSize.horizontalBlockSize! * 6,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(12),
                      child: controllerdetailsText.getPiker("""${abc[1]}""")),
                  controllerNextButoon.getPiker(() {
                    controller.showbuttonad(
                        context, '/Credit_Score', '/Discrip', '');
                  }, 15, "Next")
                ],
              ),
            ),
            banner.getBN('/Discrip')
          ],
        ),
      ),
    );
  }
}
