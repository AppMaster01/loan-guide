// ignore_for_file: camel_case_types, non_constant_identifier_names, await_only_futures, sized_box_for_whitespace, invalid_use_of_protected_member, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Ad Controller/Tap Controller.dart';

class Loan_Term extends StatefulWidget {
  const Loan_Term({super.key});

  @override
  State<Loan_Term> createState() => _Loan_TermState();
}

class _Loan_TermState extends State<Loan_Term> {
  var SELECTNUMBER = 0.obs;
  var LoanMonth = "".obs;
  var LoanAMount = "".obs;
  var abc = Get.arguments;
  var Rate = 0.obs;
  final LOANAMOUNT = TextEditingController().obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    LoanMonth.value = (await prefs.getString("MONTH"))!;
    SELECTNUMBER.value = (await prefs.getInt('SELECTINDEX'))!;
    LoanAMount.value = (await prefs.getString("LoanAMount"))!;
    Rate.value = (await prefs.getInt("RATE"))!;
  }

  var BOOL = false.obs;
  var LOANRATE = 0.obs;
  var PAYMENT = 0.obs;

  @override
  Widget build(BuildContext context) {
    var Data = int.parse(abc).obs;
    var loanAmount = (int.tryParse(LOANAMOUNT.value.text) ?? 0).obs;
    var Intrest = (((Data.value / 100) * 1.5) / 12).round().obs;
    var PyMent = (Data.value + Intrest.value).obs;
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Term', ''),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Term', '');
        }, "Loan Term"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenSize.fSize_13(),
                          right: ScreenSize.fSize_13()),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controllerContainer.getPiker(
                              double.infinity,
                              100,
                              Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Obx(
                                        () => Center(
                                          child: TextField(
                                            controller: LOANAMOUNT.value,
                                            keyboardType: TextInputType.number,
                                            cursorColor: const Color(0xFF152C70),
                                            onChanged: (value) {
                                              LOANAMOUNT.refresh();
                                              LOANRATE.refresh();
                                              PAYMENT.refresh();
                                            },
                                            style: GoogleFonts.prozaLibre(
                                                color: const Color(0xFF089BAB),
                                                fontWeight: FontWeight.w500),
                                            readOnly:
                                                BOOL.value == true ? false : true,
                                            decoration: InputDecoration(
                                              hintText: "Amount",
                                              hintStyle: GoogleFonts.prozaLibre(
                                                  color: const Color(0xff000000),
                                                  fontSize: ScreenSize
                                                          .horizontalBlockSize! *
                                                      4,
                                                  fontWeight: FontWeight.w500),
                                              contentPadding:
                                                  EdgeInsetsDirectional.symmetric(
                                                      horizontal: ScreenSize
                                                              .horizontalBlockSize! *
                                                          5,
                                                      vertical:
                                                          ScreenSize.fSize_12()),
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left:
                                                ScreenSize.horizontalBlockSize! *
                                                    45),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: ScreenSize.fSize_100(),
                                              child: controllerTextlibra.getPiker(
                                                  "₹ ${LOANAMOUNT.value.text == "" ? abc : LOANAMOUNT.value.text}",
                                                  BOOL.value == true
                                                      ? 0xffffffff
                                                      : 0xFF089BAB,
                                                  FontWeight.w500,
                                                  4),
                                            ),
                                            SizedBox(
                                                width: ScreenSize.fSize_10()),
                                            GestureDetector(
                                              onTap: () {
                                                BOOL.value = !BOOL.value;
                                              },
                                              child: Container(
                                                width: ScreenSize
                                                        .horizontalBlockSize! *
                                                    13,
                                                height: ScreenSize
                                                        .horizontalBlockSize! *
                                                    9,
                                                decoration: ShapeDecoration(
                                                  color: const Color(0xFF089BAB),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: controllerImage.getPiker(
                                                      BOOL.value == true
                                                          ? "assert/Icon/EMI Calc.png"
                                                          : "assert/Icon/edit.png",
                                                      6),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    controllerTrem.getText("Total Loan Amount",
                        '₹ ${LOANAMOUNT.value.text == "" ? Data.value : LOANAMOUNT.value.text}'),
                    Obx(() {
                      return controllerTrem.getText(
                          "Total Interest Amount (1.5% Per Month)",
                          '+₹${BOOL.value == true ? (((loanAmount.value / 100) * 1.5) / 12).round() : Intrest.value}');
                    }),
                    controllerTrem.getText("Total Payable Amount",
                        '₹ ${BOOL.value == true ? (LOANRATE.value + loanAmount.value) : Data.value + Intrest.value}'),
                    SizedBox(height: ScreenSize.fSize_20()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_12()),
                        controllerTextlibra.getPiker(
                            "Select EMI Terms", 0xff182032, FontWeight.w600, 4.6),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 2.1),
                        itemCount: MONTH.value.length,
                        itemBuilder: (context, index) {
                          return Obx(
                            () => GestureDetector(
                              onTap: () {
                                SELECTNUMBER.value = index;
                                LoanMonth.value = MONTH.value[index];
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF6FFFF),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1,
                                        color: SELECTNUMBER.value == index
                                            ? const Color(0xFF089BAB)
                                            : const Color(0xFFCEEBEE)),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: controllerTextlibra.getPiker(
                                      MONTH.value[index],
                                      0xff000000,
                                      FontWeight.w500,
                                      4),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    controllerNextButoon.getPiker(() async {
                      LOANRATE.value =
                          (((loanAmount.value / 100) * 1.5) / 12).round();
                      PAYMENT.value = (LOANRATE.value + loanAmount.value);
                      var prefs = await SharedPreferences.getInstance();
                      await prefs.setString("MONTH", LoanMonth.value.toString());
                      await prefs.setInt("SELECTINDEX", SELECTNUMBER.value);
                      await prefs.setString("RATE", Intrest.value.toString());
                      await prefs.setString("PAYMENT", PyMent.value.toString());
                      await prefs.setBool("BOOL", BOOL.value);
                      controller.showbuttonad(context, '/Select_Bank',
                          '/Loan_Term', [LOANRATE.value, PAYMENT.value]);
                    }, 5, "Select Bank"),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Loan_Term')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "Total Loan Amount",
    "Total Interest Amount (1.5% Per Month)",
    "Total Payable Amount",
  ].obs;
  var MONTH = [
    "3 Month",
    "4 Month",
    "6 Month",
    "7 Month",
    "8 Month",
    "9 Month",
    "10 Month",
    "11 Month",
    "12 Month",
    "24 Month",
    "36 Month",
    "48 Month",
  ].obs;
}

final controllerTrem = Get.put(CASHCOUNTcontroller());

class CASHCOUNTcontroller extends GetxController {
  getText(text, amount) {
    return Padding(
      padding: EdgeInsets.only(
          top: ScreenSize.fSize_15(),
          left: ScreenSize.fSize_12(),
          right: ScreenSize.fSize_12()),
      child: controllerContainer.getPiker(
          double.infinity,
          100,
          Column(
            children: [
              SizedBox(height: ScreenSize.fSize_17()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: ScreenSize.horizontalBlockSize! * 40,
                    child: controllerTextlibra.getPiker(
                        "$text", 0xff000000, FontWeight.w500, 3.5),
                  ),
                  SizedBox(width: ScreenSize.horizontalBlockSize! * 5),
                  Container(
                    width: ScreenSize.fSize_90(),
                    child: Center(
                      child: controllerTextlibra.getPiker(
                          amount, 0xFF089BAB, FontWeight.w500, 4),
                    ),
                  )
                ],
              ),
              SizedBox(height: ScreenSize.fSize_17()),
            ],
          )),
    );
  }
}
