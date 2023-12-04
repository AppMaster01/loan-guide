// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

class Details_Page extends StatefulWidget {
  const Details_Page({super.key});

  @override
  State<Details_Page> createState() => _Details_PageState();
}

class _Details_PageState extends State<Details_Page> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Details_Page', ''),

      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Details_Page', '');
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
                      child: controllerdetailsText.getPiker(
                          """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."""))
                ],
              ),
            ),
            banner.getBN('/Details_Page')
          ],
        ),
      ),
    );
  }
}
