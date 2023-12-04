// ignore_for_file: camel_case_types, non_constant_identifier_names, await_only_futures, invalid_use_of_protected_member, use_build_context_synchronously

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Fill_Up_Screen/Form_1.dart';

class Credit_Score extends StatefulWidget {
  const Credit_Score({super.key});

  @override
  State<Credit_Score> createState() => _Credit_ScoreState();
}

class _Credit_ScoreState extends State<Credit_Score> {
  double HIGHT = 30;
  double WIDTH = 5;
  var INDEX = 0.obs;
  var Score = 0.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    Score.value = (await prefs.getInt('CradiScore'))!;
    INDEX.value = (await prefs.getInt('INDEXING'))!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Credit_Score', '');
        }, 'Credit Score'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: controllerTextlibra.getPiker(
                        "Select Your Credit Score",
                        0xff182032,
                        FontWeight.w600,
                        5.3),
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: controllerDiscrip.getPiker(
                        70,
                        """Choose Your Credit Score For Better Loan Opportunity""",
                        0xFF93969F,
                        FontWeight.w300,
                        3.7),
                  ),
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 10),
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
                              INDEX.value = index;
                              Score.value = ScoreNumber.value[index];
                            }, TEXT.value[index], INDEX.value == index),
                          ),
                        );
                      },
                    ),
                  ),
                  controllerNextButoon.getPiker(() async {
                    Data.value.addAll({
                      "Score": Score.value,
                    });
                    var prefs = await SharedPreferences.getInstance();
                    await prefs.setInt('CradiScore', Score.value);
                    await prefs.setInt('INDEXING', INDEX.value);
                    // var userData = Data.value;
                    // prefs.setString('name', userData.toString());
                    controller.showbuttonad(
                        context, '/Profession', '/Credit_Score', '');
                  }, 15, "Next"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Credit_Score')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "300 - 400",
    "400 - 500",
    "500 - 600",
    "600 - 700",
    "700 - 800",
  ].obs;
  var ScoreNumber = [
    Random().nextInt(100) + 300,
    Random().nextInt(100) + 400,
    Random().nextInt(100) + 500,
    Random().nextInt(100) + 600,
    Random().nextInt(100) + 700,
  ].obs;
}
