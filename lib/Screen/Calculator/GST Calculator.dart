// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Media_Qury/Media.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Widget_Controller/Controller.dart';

class GST_Calculator extends StatefulWidget {
  const GST_Calculator({super.key});

  @override
  State<GST_Calculator> createState() => _GST_CalculatorState();
}

class _GST_CalculatorState extends State<GST_Calculator> {
  var abc = Get.arguments;
  var ONE = false.obs;
  var TWO = false.obs;
  var THREE = false.obs;
  var FOR = false.obs;
  var FIVE = false.obs;
  var SIX = false.obs;
  var REST = false.obs;
  var Calculate = false.obs;
  var ADD = false.obs;
  var REMOVE = false.obs;
  final Principal = TextEditingController().obs;
  var Rate = 0.obs;

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

  var investment = 0.0.obs;
  var interest = 0.0.obs;
  var sip = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/GST_Calculator', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/GST_Calculator', '');
        }, "${abc[0]}"),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Obx(
            () => Column(
              children: [
                SizedBox(height: ScreenSize.fSize_15()),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: controllerContainer.getPiker(
                      double.infinity,
                      5,
                      Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_20()),
                          Row(
                            children: [
                              SizedBox(width: ScreenSize.fSize_18()),
                              controllerTextlibra.getPiker(
                                  "Amount*", 0xff089BAB, FontWeight.w500, 5.2),
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_10()),
                          Padding(
                            padding: EdgeInsets.only(
                                right: ScreenSize.horizontalBlockSize! * 1,
                                left: ScreenSize.horizontalBlockSize! * 1),
                            child: controllerfiled.gettextfiled(
                                double.infinity,
                                Principal.value,
                                "Original Amount",
                                TextInputType.number),
                          ),
                          SizedBox(height: ScreenSize.fSize_15()),
                          Row(
                            children: [
                              SizedBox(width: ScreenSize.fSize_18()),
                              controllerTextlibra.getPiker(
                                  "GST Rate*", 0xff089BAB, FontWeight.w500, 5.2),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_15()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  controllerradio.getPiker(() {
                                    ONE.value = true;
                                    TWO.value = false;
                                    THREE.value = false;
                                    FOR.value = false;
                                    FIVE.value = false;
                                    SIX.value = false;
                                    Rate.value = 2;
                                  },
                                      ONE.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),
                                      "2%",ScreenSize.fSize_8()),
//=======================================================================================
                                  controllerradio.getPiker(() {
                                    ONE.value = false;
                                    TWO.value = true;
                                    THREE.value = false;
                                    FOR.value = false;
                                    FIVE.value = false;
                                    SIX.value = false;
                                    Rate.value = 5;
                                  },
                                      TWO.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),

                                      "5%",ScreenSize.fSize_8()),
//=======================================================================================
                                  controllerradio.getPiker(() {
                                    ONE.value = false;
                                    TWO.value = false;
                                    THREE.value = true;
                                    FOR.value = false;
                                    FIVE.value = false;
                                    SIX.value = false;
                                    Rate.value = 12;
                                  },
                                      THREE.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),

                                      "12%",ScreenSize.fSize_8()),
                                ],
                              ),
                              SizedBox(height: ScreenSize.fSize_15()),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  controllerradio.getPiker(() {
                                    ONE.value = false;
                                    TWO.value = false;
                                    THREE.value = false;
                                    FOR.value = true;
                                    FIVE.value = false;
                                    SIX.value = false;
                                    Rate.value = 18;
                                  },
                                      FOR.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),

                                      "18%",ScreenSize.fSize_8()),
//=======================================================================================
                                  controllerradio.getPiker(() {
                                    ONE.value = false;
                                    TWO.value = false;
                                    THREE.value = false;
                                    FOR.value = false;
                                    FIVE.value = true;
                                    SIX.value = false;
                                    Rate.value = 28;
                                  },
                                      FIVE.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),

                                      "28%",ScreenSize.fSize_8()),
//=======================================================================================
                                  controllerradio.getPiker(() {
                                    ONE.value = false;
                                    TWO.value = false;
                                    THREE.value = false;
                                    FOR.value = false;
                                    FIVE.value = false;
                                    SIX.value = true;
                                    Rate.value = 0;
                                  },
                                      SIX.value == true
                                          ? const Color(0xFF089BAB)
                                          : Colors.transparent,
                                      ScreenSize.fSize_50(),

                                      "Other",ScreenSize.fSize_8()),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_30()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              controllerGst.getPiker(() {
                                id.value = 1;
                                ADD.value = true;
                                REMOVE.value = false;
                              },
                                  ADD.value == true
                                      ? const Color(0xFF089BAB)
                                      : const Color(0xFFCEEBEE),
                                  "Add GST",
                                  ADD.value == true
                                      ? const Color(0xFF089BAB)
                                      : const Color(0xFFCEEBEE),
                                  ADD.value == true ? 0xFF089BAB : 0xFF93969F),
                              controllerGst.getPiker(() {
                                id.value = 2;
                                REMOVE.value = true;
                                ADD.value = false;
                              },
                                  REMOVE.value == true
                                      ? const Color(0xFF089BAB)
                                      : const Color(0xFFCEEBEE),
                                  "Remove GST",
                                  REMOVE.value == true
                                      ? const Color(0xFF089BAB)
                                      : const Color(0xFFCEEBEE),
                                  REMOVE.value == true ? 0xFF089BAB : 0xFF93969F)
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_20()),
                        ],
                      )),
                ),
                SizedBox(height: ScreenSize.fSize_15()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    controllerCalculate.getPiker(() {
                      REST.value = true;
                      Calculate.value = false;
                      Principal.value.clear();
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
                      if (Principal.value.text.isEmpty) {
                        showToast();
                      } else if (Principal.value.text.isNotEmpty) {
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
                        Calculate.value == true ? 0xFF089BAB : 0xFF93969F,
                        "Calculate"),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_15()),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: controllerContainer.getPiker(
                      double.infinity,
                      5,
                      Column(
                        children: [
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 7),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 7.5),
                              controllercaltext.getText(
                                  "GST Price", "${GST.value.round()}"),
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
                          controllerdivider.getText(),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 7.5),
                              controllercaltext.getText(
                                  "Original Price", "${Original.value.round()}"),
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
                          controllerdivider.getText(),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
                          Row(
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 7.5),
                              controllercaltext.getText(
                                  "Net Price", "${Net.value.round()}"),
                            ],
                          ),
                          SizedBox(height: ScreenSize.horizontalBlockSize! * 7),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  var GST = 0.0.obs;
  var id = 0.0.obs;
  var Original = 0.0.obs;
  var Net = 0.0.obs;

  calculation() {
    int Amount = int.parse(Principal.value.text);
    double rate = double.parse(Rate.value.toString());
    // GST.value = Amount * Rate / 100;
    GST.value = id.value == 1
        ? (Amount * (rate / 100))
        : (Amount - (Amount * (100 / (100 + rate))));
    Original.value = id.value == 1
        ? (double.parse(Amount.toString()) + GST.value)
        : (double.parse(Amount.toString()) - GST.value);
    Net.value = double.parse(Amount.toString());
  }
}
