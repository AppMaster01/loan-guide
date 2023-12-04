// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';

import '../../../../../Ad Controller/Google_Ads.dart';
import '../../../../../Media_Qury/Media.dart';
import '../../../../../Widget_Controller/Controller.dart';
import '../../../model.dart';

class Claim_Details extends StatefulWidget {
  const Claim_Details({Key? key}) : super(key: key);

  @override
  State<Claim_Details> createState() => _Claim_DetailsState();
}

class _Claim_DetailsState extends State<Claim_Details> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        backbuttoncontroller.showBackbuttonad(context, '/Claim_Details', '');
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Claim_Details', '');
        }, "Claim_Details"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: "$abc"));
                      Fluttertoast.showToast(
                        msg: "Link copied",
                        toastLength: Toast.LENGTH_LONG,
                        timeInSecForIosWeb: 3,
                        textColor: Colors.black,
                        gravity: ToastGravity.SNACKBAR,
                        backgroundColor: const Color(0xFFCEEBEE),
                        fontSize: 15,
                      );
                    },
                    child: Padding(
                        padding: EdgeInsets.only(
                            right: ScreenSize.fSize_10(),
                            left: ScreenSize.fSize_10()),
                        child: controllerContainer.getPiker(
                            double.infinity,
                            4,
                            Column(
                              children: [
                                SizedBox(height: ScreenSize.fSize_15()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    controllerImage.getPiker(
                                        "assert/copy.png", 5.5),
                                    SizedBox(width: ScreenSize.fSize_8()),
                                    controllerTextlibra.getPiker("Copy Link",
                                        0xff000000, FontWeight.w600, 4.1),
                                  ],
                                ),
                                SizedBox(height: ScreenSize.fSize_15()),
                              ],
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: controllerContainer.getPiker(
                        double.infinity,
                        4,
                        Column(
                          children: [
                            SizedBox(height: ScreenSize.fSize_15()),
                            controllerdiscrip.getText(
                                """✤ Step 1: Login to the Unified Portal of Employees’ Provident Fund (https://unifiedportal.epfindia.gov.in/) and click on For employees, followed by UAN Member e-Sewa.

✤ Step 2: Enter UAN and password to log in to the portal.

✤ Step 3: Click on Manage on the top panel and then on KYC

✤ Step 4: On the next page, under Add KYC tab, provide your bank, PAN and Aadhaar, passport, driving license, election card and ration card details. Then click on submit. After submitting, you can find these details under Pending KYC tab. Once approved by the employer (which would generally take 15 days), it will be shown under Approved KYC tab.

✤ Linking of your Aadhaar to EPF account will help in faster withdrawal and transfer process and for that, the present employer should have approved and verified the KYC including the employees Aadhaar details."""),
                            SizedBox(height: ScreenSize.fSize_15()),
                          ],
                        )),
                  )
                ],
              ),
            ),
            banner.getBN('/Claim_Details')
          ],
        ),
      ),
    );
  }
}
