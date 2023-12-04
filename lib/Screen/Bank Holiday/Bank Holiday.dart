// ignore_for_file: camel_case_types, invalid_use_of_protected_member, sized_box_for_whitespace, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Ad Controller/Tap Controller.dart';
import '../../Media_Qury/Media.dart';

class Bank_Holiday extends StatefulWidget {
  const Bank_Holiday({super.key});

  @override
  State<Bank_Holiday> createState() => _Bank_HolidayState();
}

class _Bank_HolidayState extends State<Bank_Holiday> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Bank_Holiday', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Bank_Holiday', '');
        }, "Bank Holiday"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.value.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context,
                                  '/Bank_Holiday_Details',
                                  '/Bank_Holiday',
                                  [state.value[index], index]);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: controllerContainer.getPiker(
                                  double.infinity,
                                  100,
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        SizedBox(height: ScreenSize.fSize_10()),
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: ScreenSize.fSize_15()),
                                            Container(
                                              width: ScreenSize
                                                      .horizontalBlockSize! *
                                                  70,
                                              child: controllerTextlibra.getPiker(
                                                  """${state.value[index]}""",
                                                  0xff000000,
                                                  FontWeight.w600,
                                                  4),
                                            ),
                                            SizedBox(
                                                width: ScreenSize.fSize_10()),
                                            controllerImage.getPiker(
                                                "assert/Icon/Arrow - Right.png",
                                                5)
                                          ],
                                        ),
                                        SizedBox(height: ScreenSize.fSize_10()),
                                      ],
                                    ),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Bank_Holiday')
          ],
        ),
      ),
    );
  }

  var state = [
    "Andaman & Nicobar",
    "Bihar",
    "Dadra & Nagar Haveli",
    "Gujarat",
    "Andhar Pradesh",
    "Chandigarh",
    "Puducherry",
    "west Bengal",
    "Tripura",
    "Himachal Pradesh",
    "Rajasthan",
    "Asam",
    "New Delhi",
    "Panjab",
    "Jharkhand",
    "Uttar Pradesh",
    "Karnataka",
    "Nagaland",
    "Goa",
    "Uttarakhand",
    "Daman & Diu",
    "Maharashtra",
  ].obs;
}
