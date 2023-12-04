// ignore_for_file: invalid_use_of_protected_member, sized_box_for_whitespace, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Google_Ads.dart';
import '../../Ad Controller/Tap Controller.dart';
import '../../Media_Qury/Media.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Calculator', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Calculator', '');
        }, "EMI Calculator"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_10()),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: IMAGE.value.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            controller.showbuttonad(
                                context,
                                '/${PAGE.value[index]}',
                                '/Calculator',
                                [Text.value[index]]);
                          },
                          child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: controllerContainer.getPiker(
                                  double.infinity,
                                  100,
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: ScreenSize.horizontalBlockSize! *
                                              55,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              controllercircle.getPiker(
                                                  14, '${IMAGE.value[index]}', 7),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: ScreenSize
                                                            .horizontalBlockSize! *
                                                        35,
                                                    child: controllerTextlibra
                                                        .getPiker(
                                                            '${Text.value[index]}',
                                                            0xff000000,
                                                            FontWeight.w600,
                                                            4),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: ScreenSize
                                                      .horizontalBlockSize! *
                                                  3),
                                          child: controllerImage.getPiker(
                                              "assert/Icon/Arrow - Right.png", 5),
                                        )
                                      ],
                                    ),
                                  ))),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Calculator')
          ],
        ),
      ),
    );
  }

  var Text = [
    "SIP Calculator",
    "EMI Calculator",
    "GST Calculator",
  ].obs;
  var IMAGE = [
    "assert/Icon/SIP Calc.png",
    "assert/Icon/EMI Calc.png",
    "assert/Icon/GST Calc..png",
  ].obs;
  var PAGE = [
    "SIP_Calculator",
    "EMI_Calculator",
    "GST_Calculator",
  ].obs;
}
