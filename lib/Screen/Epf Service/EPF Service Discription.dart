// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Media_Qury/Media.dart';
import '../../Widget_Controller/Controller.dart';

class EPF_Service_Discription extends StatefulWidget {
  const EPF_Service_Discription({super.key});

  @override
  State<EPF_Service_Discription> createState() =>
      _EPF_Service_DiscriptionState();
}

class _EPF_Service_DiscriptionState extends State<EPF_Service_Discription> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/EPF_Service_Discription', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/EPF_Service_Discription', '');
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
                  SizedBox(
                    height: ScreenSize.fSize_80(),
                  ),
                ],
              ),
            ),
            banner.getBN('/EPF_Service_Discription')
          ],
        ),
      ),
    );
  }
}
