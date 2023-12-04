// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Media_Qury/Media.dart';
import '../../Widget_Controller/Controller.dart';

class EMI_Calculator extends StatefulWidget {
  const EMI_Calculator({super.key});

  @override
  State<EMI_Calculator> createState() => _EMI_CalculatorState();
}

class _EMI_CalculatorState extends State<EMI_Calculator> {
  final Principal = TextEditingController().obs;
  final Rate = TextEditingController().obs;
  final YEAR = TextEditingController().obs;
  final MONTH = TextEditingController().obs;
  var REST = false.obs;
  var Calculate = false.obs;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Principal.value.dispose();
    Rate.value.dispose();
  }

  var amount = 0.0.obs;
  var rate = 0.0.obs;
  var emiresult = 0.0.obs;
  var TotalPayment = 0.0.obs;
  var TotalInterst = 0.0.obs;

  var abc = Get.arguments;

  showToast() {
    Fluttertoast.showToast(
      msg: "Empty",
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 3,
      textColor: Colors.white,
      gravity: ToastGravity.SNACKBAR,
      backgroundColor: Colors.red,
      fontSize: ScreenSize.fSize_18(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/EMI_Calculator', ''),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: controllerappbar.getPiker(() {
            backbuttoncontroller.showBackbuttonad(context, '/EMI_Calculator', '');
          }, "${abc[0]}"),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Obx(
                  () => Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(12),
                              child: controllerContainer.getPiker(
                                  double.infinity,
                                  6,
                                  Column(
                                    children: [
                                      SizedBox(height: ScreenSize.fSize_20()),
                                      controllerfiled.gettextfiled(
                                          double.infinity,
                                          Principal.value,
                                          "Principal Amount",
                                          TextInputType.number),
                                      SizedBox(height: ScreenSize.fSize_12()),
                                      controllerfiled.gettextfiled(
                                          double.infinity,
                                          Rate.value,
                                          "Rate of Interest (p.a)",
                                          TextInputType.number),
                                      SizedBox(height: ScreenSize.fSize_15()),
                                      Row(
                                        children: [
                                          SizedBox(width: ScreenSize.fSize_18()),
                                          controllerTextlibra.getPiker(
                                            "Tenure*",
                                            0xFF089BAB,
                                            FontWeight.w500,
                                            ScreenSize.horizontalBlockSize! * 1.5,
                                          )
                                        ],
                                      ),
                                      SizedBox(height: ScreenSize.fSize_15()),
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: ScreenSize
                                                        .horizontalBlockSize! *
                                                    45),
                                            child: controllerfiled.gettextfiled(
                                                double.infinity,
                                                MONTH.value,
                                                "Months",
                                                TextInputType.number),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              right: ScreenSize
                                                      .horizontalBlockSize! *
                                                  45,
                                            ),
                                            child: controllerfiled.gettextfiled(
                                                double.infinity,
                                                YEAR.value,
                                                "Year",
                                                TextInputType.number),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: ScreenSize.fSize_20()),
                                    ],
                                  ))),
                          SizedBox(height: ScreenSize.fSize_10()),

                          Obx(
                                () => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                controllerCalculate.getPiker(() {
                                  REST.value = true;
                                  Calculate.value = false;
                                  Principal.value.clear();
                                  Rate.value.clear();
                                },
                                    REST.value == true
                                        ? const Color(0xFFF6FFFF)
                                        : const Color(0xFFF6FFFF),
                                    REST.value == true
                                        ? const Color(0xFF089BAB)
                                        : const Color(0xFFCEEBEE),
                                    REST.value == true
                                        ? const Color(0xFF089BAB)
                                        : const Color(0xFFCEEBEE),
                                    REST.value == true ? 0xFF089BAB : 0xFF93969F,
                                    "Reset"),
                                controllerCalculate.getPiker(() {
                                  REST.value = false;
                                  Calculate.value = true;
                                  if (Principal.value.text.isEmpty ||
                                      Rate.value.text.isEmpty) {
                                    showToast();
                                  } else if (Principal.value.text.isNotEmpty ||
                                      Rate.value.text.isNotEmpty) {
                                    buildUser();
                                  }
                                },
                                    Calculate.value == true
                                        ? const Color(0xFFF6FFFF)
                                        : const Color(0xFFF6FFFF),
                                    Calculate.value == true
                                        ? const Color(0xFF089BAB)
                                        : const Color(0xFFCEEBEE),
                                    Calculate.value == true
                                        ? const Color(0xFF089BAB)
                                        : const Color(0xFFCEEBEE),
                                    Calculate.value == true ? 0xFF089BAB : 0xFF93969F,
                                    "Calculate"),
                              ],
                            ),
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 5),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: controllerContainer.getPiker(
                                double.infinity,
                                5,
                                Column(
                                  children: [
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 7),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width:
                                                ScreenSize.horizontalBlockSize! *
                                                    7.5),
                                        controllercaltext.getText("Monthly EMI",
                                            "${emiresult.value.round()}"),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 3),
                                    controllerdivider.getText(),
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 3),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width:
                                                ScreenSize.horizontalBlockSize! *
                                                    7.5),
                                        controllercaltext.getText(
                                            "Total Interest",
                                            "${TotalInterst.value.round()}"),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 3),
                                    controllerdivider.getText(),
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 3),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width:
                                                ScreenSize.horizontalBlockSize! *
                                                    7.5),
                                        controllercaltext.getText("Total Payment",
                                            "${TotalPayment.value.round()}"),
                                      ],
                                    ),
                                    SizedBox(
                                        height:
                                            ScreenSize.horizontalBlockSize! * 7),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: ScreenSize.fSize_80(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              banner.getBN('/EMI_Calculator')
            ],
          )),
    );
  }

  buildUser() {
    int P = int.parse(Principal.value.text);
    double R = double.parse(Rate.value.text) / 12 / 100;
    int Y = int.parse(YEAR.value.text) * 12 + int.parse(MONTH.value.text);
    double M = double.parse(Y.toString());
    emiresult.value = (P * R * pow((1 + R), M) / (pow((1 + R), M) - 1));
    TotalPayment.value = emiresult.value * M;
    TotalInterst.value = 0.0.obs.value = TotalPayment.value - P;
  }
}
