// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Media_Qury/Media.dart';
import '../../Widget_Controller/Controller.dart';

class SIP_Calculator extends StatefulWidget {
  const SIP_Calculator({super.key});

  @override
  State<SIP_Calculator> createState() => _SIP_CalculatorState();
}

class _SIP_CalculatorState extends State<SIP_Calculator> {
  final Principal = TextEditingController().obs;
  final Rate = TextEditingController().obs;
  final YEAR = TextEditingController().obs;
  final MONTH = TextEditingController().obs;
  var REST = false.obs;
  var Calculate = false.obs;
  var investment = 0.0.obs;
  var interest = 0.0.obs;
  var sip = 0.0.obs;

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
          backbuttoncontroller.showBackbuttonad(context, '/SIP_Calculator', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/SIP_Calculator', '');
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
                                        "Regular Monthly Deposit",
                                        TextInputType.number),
                                    SizedBox(height: ScreenSize.fSize_12()),
                                    controllerfiled.gettextfiled(
                                        double.infinity,
                                        Rate.value,
                                        "Rate of Interest",
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
                                            right:
                                                ScreenSize.horizontalBlockSize! *
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
                                  calculation();
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
                                  Calculate.value == true
                                      ? 0xFF089BAB
                                      : 0xFF93969F,
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
                                          width: ScreenSize.horizontalBlockSize! *
                                              7.5),
                                      controllercaltext.getText(
                                          "Investment Amount",
                                          "${investment.value.round()}"),
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
                                          width: ScreenSize.horizontalBlockSize! *
                                              7.5),
                                      controllercaltext.getText("Total Interest",
                                          "${interest.value.round()}"),
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
                                          width: ScreenSize.horizontalBlockSize! *
                                              7.5),
                                      controllercaltext.getText(
                                          "SIP Maturity Amount",
                                          "${sip.value.round()}"),
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
            banner.getBN('/SIP_Calculator')
          ],
        ),
      ),
    );
  }

  calculation() {
    int A = int.parse(Principal.value.text);
    double R = double.parse(Rate.value.text) / 12 / 100;
    int Y = int.parse(YEAR.value.text) * 12 + int.parse(MONTH.value.text);
    var IA = A * ((pow((1 + R), (Y)) - 1) / R) * (1 + R);
    investment.value = 0.0.obs.value = double.parse((A * Y).toString());
    interest.value = IA - investment.value;
    sip.value = 0.0.obs.value = investment.value + interest.value;
  }
}
