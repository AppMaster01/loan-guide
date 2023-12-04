// ignore_for_file: non_constant_identifier_names, await_only_futures, invalid_use_of_protected_member, use_build_context_synchronously

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Ad Controller/Tap Controller.dart';
import '../../../Media_Qury/Media.dart';

class Select_Loan_Amount extends StatefulWidget {
  const Select_Loan_Amount({super.key});

  @override
  State<Select_Loan_Amount> createState() => _Select_Loan_AmountState();
}

class _Select_Loan_AmountState extends State<Select_Loan_Amount> {
  var AMOUNT = 0.obs;
  var LoanAMount = "".obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    LoanAMount.value = (await prefs.getString('LoanAMount'))!;
    AMOUNT.value = (await prefs.getInt('AMOUNT'))!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Select_Loan_Amount', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Select_Loan_Amount', '');
        }, "Loan Amount"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_15()),
                        controllerTextlibra.getPiker("Select Loan Amount",
                            0xff182032, FontWeight.w600, 4.5)
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_10()),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 2.1),
                        itemCount: TEXT.value.length,
                        itemBuilder: (context, index) {
                          return Obx(
                            () => GestureDetector(
                              onTap: () {
                                AMOUNT.value = index;
                                LoanAMount.value = TEXT.value[index];
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF6FFFF),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1,
                                        color: AMOUNT.value == index
                                            ? const Color(0xFF089BAB)
                                            : const Color(0xFFCEEBEE)),
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                ),
                                child: Center(
                                  child: controllerTextlibra.getPiker(
                                      TEXT.value[index],
                                      0xff000000,
                                      FontWeight.w500,
                                      4.2),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    controllerNextButoon.getPiker(() async {
                      if (LoanAMount.value == "") {
                        Fluttertoast.showToast(
                          msg: "Cannot be empty",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.red,
                          fontSize: 15,
                        );
                      } else {
                        var prefs = await SharedPreferences.getInstance();
                        await prefs.setInt("AMOUNT", AMOUNT.value);
                        await prefs.setString("LoanAMount", LoanAMount.value);
                        controller.showbuttonad(context, '/Loan_Term',
                            '/Select_Loan_Amount', LoanAMount.value);
                      }

                    }, 55, "Proceed"),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Select_Loan_Amount')
          ],
        ),
      ),
    );
  }

  var TEXT = [
    "10000",
    "20000",
    "30000",
    "50000",
    "100000",
    "150000",
    "200000",
    "230000",
    "260000",
    "280000",
    "300000",
    "350000",
  ].obs;
}
