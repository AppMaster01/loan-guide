// ignore_for_file: camel_case_types, invalid_use_of_protected_member, sized_box_for_whitespace, unnecessary_string_interpolations, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

class Loan_page extends StatefulWidget {
  const Loan_page({super.key});

  @override
  State<Loan_page> createState() => _Loan_pageState();
}

class _Loan_pageState extends State<Loan_page> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Loan_page', ''),
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: controllerappbar.getPiker(
            () {
              backbuttoncontroller.showBackbuttonad(context, '/Loan_page', '');
            },
            "Loan",
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: ScreenSize.fSize_10(),
                          right: ScreenSize.fSize_10()),
                      child: controllerContainer.getPiker(
                          double.infinity,
                          5,
                          Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_8()),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: ScreenSize.fSize_12()),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: ScreenSize.fSize_4()),
                                      controllerRichtext.getPiker(
                                          'Loan amount up to : ', '₹ 5,00,000'),
                                      SizedBox(height: ScreenSize.fSize_10()),
                                      controllerRichtext.getPiker(
                                          'Annual interest up to : ', '₹ 3 %'),
                                      SizedBox(height: ScreenSize.fSize_10()),
                                      controllerRichtext.getPiker(
                                          'Loan period up to : ', '48 Month'),
                                      SizedBox(height: ScreenSize.fSize_10()),
                                      GestureDetector(
                                        onTap: () {
                                          controller.showbuttonad(
                                              context,
                                              '/Loan_Apply_Now',
                                              '/Loan_page',
                                              '');
                                        },
                                        child: controllerApplybutton.getPiker(
                                            ScreenSize.horizontalBlockSize! * 30,
                                            ScreenSize.horizontalBlockSize! * 9,
                                            100,
                                            "Apply Now"),
                                      ),
                                      SizedBox(height: ScreenSize.fSize_13()),
                                    ],
                                  ),
                                  SizedBox(width: ScreenSize.fSize_30()),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: ScreenSize.horizontalBlockSize! * 4),
                                    child: controllerImage.getPiker(
                                        'assert/loan_vectior.png', 28),
                                  )
                                ],
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: IMAGE.value.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(context, '/Show_Details',
                                  '/Loan_page', TEXT.value[index]);
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(6),
                                child: controllerContainer.getPiker(
                                    double.infinity,
                                    100,
                                    Padding(
                                      padding: const EdgeInsets.all(6),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width:
                                                ScreenSize.horizontalBlockSize! *
                                                    55,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                controllercircle.getPiker(14,
                                                    '${IMAGE.value[index]}', 7),
                                                Column(
                                                  children: [
                                                    Container(
                                                      width: ScreenSize
                                                              .horizontalBlockSize! *
                                                          35,
                                                      child: controllerTextlibra
                                                          .getPiker(
                                                              '${TEXT.value[index]}',
                                                              0xff000000,
                                                              FontWeight.w600,
                                                              4),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                right: ScreenSize
                                                        .horizontalBlockSize! *
                                                    3),
                                            child: controllerImage.getPiker(
                                                "assert/Icon/Arrow - Right.png",
                                                5),
                                          )
                                        ],
                                      ),
                                    ))),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.fSize_80(),
                    )
                  ],
                ),
              ),
              banner.getBN('/Loan_page')
            ],
          )),
    );
  }

  var IMAGE = [
    "assert/Icon/loan/aactive uan.png",
    "assert/Icon/loan/balance online.png",
    "assert/Icon/loan/pensioners loan.png",
    "assert/Icon/loan/trrn status.png",
    "assert/Icon/loan/claim.png",
    "assert/Icon/loan/balance call.png",
    "assert/Icon/loan/balance sms.png",
    "assert/Icon/loan/faq loan.png",
    "assert/Icon/loan/news.png",
    "assert/Icon/loan/helpline.png",
    "assert/Icon/loan/location .png",
  ].obs;
  var TEXT = [
    """Active UNA""",
    """Balance Online""",
    """Pensioners """,
    """TRRN Status""",
    """Claim """,
    """Balance Call""",
    """Balance SMS""",
    """FAQs """,
    """News """,
    """Helpline """,
    """Locate Office""",
  ].obs;
}
