// ignore_for_file: camel_case_types, non_constant_identifier_names, await_only_futures, unnecessary_string_interpolations, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Ad Controller/Tap Controller.dart';
import '../../../Widget_Controller/Controller.dart';

class Loan_Overview extends StatefulWidget {
  const Loan_Overview({super.key});

  @override
  State<Loan_Overview> createState() => _Loan_OverviewState();
}

class _Loan_OverviewState extends State<Loan_Overview> {
  var FNAME = "".obs;
  var LNAME = "".obs;
  var MNAME = "".obs;
  var DOB = "".obs;
  var emailll = "".obs;
  var Adres = "".obs;
  var State = "".obs;
  var zip = "".obs;
  var cityy = "".obs;
  var Countryyyyyy = "".obs;
  var PHONNUMBER = "".obs;
  var NUMBER = "".obs;
  var SALARYY = "".obs;
  var GANDERCHEK = "".obs;
  var Income = 0.obs;
  var VALUE = 0.0.obs;
  var LoanAMount = "".obs;
  var Profession = "".obs;
  var LoanMonth = "".obs;
  var Score = 0.obs;
  var Rate = "".obs;
  var Instalment = "".obs;
  var CHEK = false.obs;
  var LOANPAYMENT = false.obs;
  var PAYMENT = false.obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    Score.value = (await prefs.getInt('CradiScore'))!;
    FNAME.value = (await prefs.getString('Firstname'))!;
    LNAME.value = (await prefs.getString('LastName'))!;
    MNAME.value = (await prefs.getString('MiddleName'))!;
    DOB.value = (await prefs.getString('DateBirth'))!;
    emailll.value = (await prefs.getString('emailll'))!;
    Adres.value = (await prefs.getString('Adres'))!;
    State.value = (await prefs.getString('State'))!;
    zip.value = (await prefs.getString('zip'))!;
    cityy.value = (await prefs.getString('cityy'))!;
    Countryyyyyy.value = (await prefs.getString('Countryyyyyy'))!;
    PHONNUMBER.value = (await prefs.getString('PHONNUMBER'))!;
    NUMBER.value = (await prefs.getString('NUMBER'))!;
    SALARYY.value = (await prefs.getString('SALARYY'))!;
    Income.value = (await prefs.getInt('Income'))!;
    GANDERCHEK.value = (await prefs.getString('Gender'))!;
    VALUE.value = (await prefs.getDouble('Slider'))!;
    LoanAMount.value = (await prefs.getString('LoanAMount'))!;
    Profession.value = (await prefs.getString('Profession'))!;
    LoanMonth.value = (await prefs.getString("MONTH"))!;
    Rate.value = (await prefs.getString("RATE"))!;
    Instalment.value = (await prefs.getString("PAYMENT"))!;
    CHEK.value = (await prefs.getBool("BOOL"))!;
    LOANPAYMENT.value = (await prefs.getBool("LOANPAYMENT"))!;
    PAYMENT.value = (await prefs.getBool("PAYMENT"))!;
  }

  double HIGHT = 4;
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Overview', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Overview', '');
        }, "Loan Overview"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_30()),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.all(12),
                      child: controllerContainer.getPiker(
                          double.infinity,
                          6,
                          Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_15()),
                              controllerTextlibra.getPiker("Personal Details",
                                  0xff089BAB, FontWeight.w500, 5),
                              SizedBox(height: ScreenSize.fSize_10()),
                              Container(
                                width: ScreenSize.horizontalBlockSize! * 60,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFCEEBEE),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: ScreenSize.fSize_18()),
                              Column(
                                children: [
                                  controllerDetails.getText("Your Name :",
                                      "${FNAME.value == "" ? "No Data" : FNAME.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Email Address :",
                                      "${emailll.value == "" ? "No Data" : emailll.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Gender  :",
                                      "${GANDERCHEK.value == "" ? "No Data" : GANDERCHEK.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Age  :",
                                      "${VALUE.value.round() == "" ? "No Data" : VALUE.value.round()}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Profession  :",
                                      "${Profession.value == "" ? "No Data" : Profession.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText(
                                      "Monthly Income  :",
                                      Income.value == 5
                                          ? "< ${Income.value == "" ? "No Data" : Income.value} LPA +"
                                          : "< ${Income.value == "" ? "No Data" : Income.value} LPA"),
                                  SizedBox(height: ScreenSize.fSize_18()),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                  Obx(
                    () => Padding(
                      padding: const EdgeInsets.all(12),
                      child: controllerContainer.getPiker(
                          double.infinity,
                          6,
                          Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_15()),
                              controllerTextlibra.getPiker(
                                  'Loan Details', 0xff089BAB, FontWeight.w500, 5),
                              SizedBox(height: ScreenSize.fSize_10()),
                              Container(
                                width: ScreenSize.horizontalBlockSize! * 60,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFCEEBEE),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: ScreenSize.fSize_18()),
                              Column(
                                children: [
                                  controllerDetails.getText("Total Loan Amount :",
                                      "${LoanAMount.value == "" ? "No Data" : LoanAMount.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Credit Score  :",
                                      "${Score.value == "" ? "No Data" : Score.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText("Loan Duration  :",
                                      "${LoanMonth.value == "" ? "No Data" : LoanMonth.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText(
                                      "Annual Interest  :",
                                      "₹${CHEK.value == true ? abc[0] : Rate.value == "" ? "No Data" : CHEK.value == true ? abc[0] : Rate.value}"),
                                  SizedBox(
                                      height: ScreenSize.horizontalBlockSize! *
                                          HIGHT),
                                  controllerDetails.getText(
                                      "Monthly Instalment  :",
                                      "₹${CHEK.value == true ? abc[1] : Instalment.value == "" ? "No Data" : CHEK.value == true ? abc[1] : Instalment.value}"),
                                  SizedBox(height: ScreenSize.fSize_18()),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                  controllerNextButoon.getPiker(() {
                    controller.showbuttonad(
                        context, '/Get_Link_For_Bank', '/Loan_Overview', '');
                  }, 3, "Get Link"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Loan_Overview')
          ],
        ),
      ),
    );
  }
}
