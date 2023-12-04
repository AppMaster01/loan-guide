// ignore_for_file: camel_case_types, non_constant_identifier_names, await_only_futures, sized_box_for_whitespace, invalid_use_of_protected_member, use_build_context_synchronously, depend_on_referenced_packages

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../Ad Controller/Back controller.dart';
import '../../../Ad Controller/Tap Controller.dart';
import '../../../Widget_Controller/Controller.dart';

class Credit_Score_1 extends StatefulWidget {
  const Credit_Score_1({super.key});

  @override
  State<Credit_Score_1> createState() => _Credit_Score_1State();
}

class _Credit_Score_1State extends State<Credit_Score_1> {
  var GNDER = 0.obs;
  var ICOME = 0.obs;
  var GANDERCHEK = "".obs;
  var Income = 0.obs;
  var VALUE = 18.0.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    Income.value = (await prefs.getInt('Income'))!;
    GANDERCHEK.value = (await prefs.getString('Gender'))!;
    VALUE.value = (await prefs.getDouble('Slider'))!;
    ICOME.value = (await prefs.getInt('INCOME'))!;
    GNDER.value = (await prefs.getInt('GENDER'))!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score_1', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score_1', '');
        }, "Credit Score"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: controllerDiscrip.getPiker(
                        55,
                        """Give Your Basic Details To Find The Best Loan Suggestions For You""",
                        0xFF93969F,
                        FontWeight.w300,
                        3.7),
                  ),
                  SizedBox(height: ScreenSize.fSize_15()),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.fSize_20()),
                      controllerTextlibra.getPiker(
                          "Select Your Gender", 0xff182032, FontWeight.w600, 4.2)
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_13()),
                  Padding(
                    padding: EdgeInsets.only(
                        right: ScreenSize.fSize_25(),
                        left: ScreenSize.fSize_25()),
                    child: controllerContainer.getPiker(
                        double.infinity,
                        100,
                        Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_12()),
                            Obx(
                              () => Row(
                                children: [
                                  SizedBox(width: ScreenSize.fSize_25()),
                                  controllerradio.getPiker(() {
                                    GNDER.value = 1;
                                    GANDERCHEK.value = "Male";
                                  },
                                      GNDER.value == 1
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.horizontalBlockSize! * 25,
                                      "Male",
                                      ScreenSize.horizontalBlockSize! * 2.5),
                                  Container(
                                    height: ScreenSize.horizontalBlockSize! * 9,
                                    width: ScreenSize.horizontalBlockSize! * 0.55,
                                    color: const Color(0xff089BAB),
                                  ),
                                  SizedBox(width: ScreenSize.fSize_25()),
                                  controllerradio.getPiker(() {
                                    GNDER.value = 2;
                                    GANDERCHEK.value = "Female";
                                  },
                                      GNDER.value == 2
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.horizontalBlockSize! * 20,
                                      "Female",
                                      ScreenSize.horizontalBlockSize! * 2.5),
                                ],
                              ),
                            ),
                            SizedBox(height: ScreenSize.fSize_12()),
                          ],
                        )),
                  ),
                  SizedBox(height: ScreenSize.fSize_25()),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.fSize_20()),
                      controllerTextlibra.getPiker(
                          "Select Your Age", 0xff182032, FontWeight.w600, 4.6)
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_40()),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 83.4,
                        height: ScreenSize.fSize_18(),
                        decoration: const BoxDecoration(
                            color: Color(0xffCEEBEE),
                            borderRadius: BorderRadius.all(Radius.circular(100))),
                      ),
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 98,
                        child: Center(
                          child: SfSliderTheme(
                            data: SfSliderThemeData(
                              labelOffset: const Offset(0.0, -30.0),
                              tickOffset: const Offset(0.0, -30.0),
                              activeTrackColor: const Color(0xFF089BAB),
                              inactiveTrackColor: const Color(0xFFCEEBEE),
                              activeTrackHeight: ScreenSize.fSize_18(),
                            ),
                            child: Obx(
                              () => SfSlider(
                                min: 18.0,
                                max: 78.0,
                                value: VALUE.value,
                                interval: 10,
                                showTicks: true,
                                showLabels: true,
                                thumbIcon: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                    ),
                                    Container(
                                      width: ScreenSize.horizontalBlockSize! * 4,
                                      height: ScreenSize.horizontalBlockSize! * 4,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff089BAB),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100))),
                                    ),
                                  ],
                                ),
                                minorTicksPerInterval: 0,
                                onChanged: (dynamic newValue) {
                                  VALUE.value = newValue;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Row(
                    children: [
                      SizedBox(width: ScreenSize.fSize_20()),
                      controllerTextlibra.getPiker(
                          "Your Monthly Income", 0xff182032, FontWeight.w600, 4.2)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: TEXT.value.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Obx(
                          () => Padding(
                            padding: const EdgeInsets.all(6),
                            child: controllerCraditScore.getPiker(() {
                              ICOME.value = index;
                              Income.value = MonthlyIncom.value[index];
                            }, TEXT.value[index], ICOME.value == index),
                          ),
                        );
                      },
                    ),
                  ),
                  controllerNextButoon.getPiker(() async {
                    var prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('Income', Income.value);
                    await prefs.setString('Gender', GANDERCHEK.value);
                    await prefs.setInt('GENDER', GNDER.value);
                    await prefs.setDouble('Slider', VALUE.value);
                    await prefs.setInt('INCOME', ICOME.value);
                    controller.showbuttonad(context, '/Select_Loan_Amount',
                        '/Credit_Score_1', [Income.value]);
                  }, 5, "Next"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Credit_Score_1')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "2 LPA",
    "3 LPA - 5 LPA",
    "5 LPA +",
  ].obs;
  var MonthlyIncom = [
    2,
    Random().nextInt(4) + 2,
    5,
  ].obs;
  var NUMBER = ["18", "25", "35", "45", "55", "65", "+65"].obs;
}
