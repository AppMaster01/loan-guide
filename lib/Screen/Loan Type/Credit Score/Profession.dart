// ignore_for_file: non_constant_identifier_names, await_only_futures, invalid_use_of_protected_member, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Ad Controller/Tap Controller.dart';
import '../../../Media_Qury/Media.dart';

class Profession extends StatefulWidget {
  const Profession({super.key});

  @override
  State<Profession> createState() => _ProfessionState();
}

class _ProfessionState extends State<Profession> {
  double HIGHT = 50;
  double WIDTH = 50;
  var INDEXXXXXX = 0.obs;
  var Profession = "".obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    INDEXXXXXX.value = (await prefs.getInt('INDEXINGGGG'))!;
    Profession.value = (await prefs.getString('Profession'))!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Profession', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Profession', '');
        }, "Profession"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: controllerTextlibra.getPiker("Select Your Profession",
                        0xff182032, FontWeight.w600, 5.3),
                  ),
                  SizedBox(height: ScreenSize.fSize_20()),
                  Center(
                    child: controllerDiscrip.getPiker(
                        58,
                        """Select Your Occupation and Get Personalized Loan Solutions With Our App""",
                        0xFF93969F,
                        FontWeight.w300,
                        3.7),
                  ),
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
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
                              INDEXXXXXX.value = index;
                              Profession.value = TEXT.value[index];
                            }, TEXT.value[index], INDEXXXXXX.value == index),
                          ),
                        );
                      },
                    ),
                  ),

                  controllerNextButoon.getPiker(() async {
                    var prefs = await SharedPreferences.getInstance();
                    await prefs.setString('Profession', Profession.value);
                    await prefs.setInt('INDEXINGGGG', INDEXXXXXX.value);
                    controller.showbuttonad(
                        context, '/Credit_Score_1', '/Profession', '');
                  }, 5, "Next"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Profession')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "Online Business",
    "Advocate",
    "Teacher",
    "Contractor",
    "Air Trasportation",
    "Child Care Service",
    "Other",
  ].obs;
}
