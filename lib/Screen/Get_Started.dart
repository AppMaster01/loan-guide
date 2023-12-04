// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: ScreenSize.horizontalBlockSize! * 25),
                Center(
                  child:
                      controllerImage.getPiker('assert/Vector_Img_1.png', 60),
                ),
                SizedBox(height: ScreenSize.horizontalBlockSize! * 10),
                controllerTextlibra.getPiker(
                    "Cash Loan Guide", 0xFF182032, FontWeight.w600, 7),
                SizedBox(height: ScreenSize.horizontalBlockSize! * 7),
                controllerDiscrip.getPiker(
                    80,
                    """Cash Loan Guide App Advice on Mobile App Helps You To Instant Approval and Disbursement for Your Urgent Financial Needs.""",
                    0xff000000,
                    FontWeight.w400,
                    3.3),
                SizedBox(height: ScreenSize.horizontalBlockSize! * 8),
                GestureDetector(
                  onTap: () {
                    controller.showbuttonad(
                        context, '/HomeScreen', '/GetStarted', '');
                  },
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 65,
                    height: ScreenSize.horizontalBlockSize! * 16,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6FFFF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFF089BAB)),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0xFF089BAB),
                          blurRadius: 0,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          controllerImage.getPiker(
                              "assert/Icon/get_started.png", 8),
                          controllerTextlibra.getPiker(
                              "Get Started", 0xff000000, FontWeight.w600, 6),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.horizontalBlockSize! * 1),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: controllerContainer.getPiker(
                      double.infinity,
                      5,
                      Column(
                        children: [
                          SizedBox(height: ScreenSize.fSize_15()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              controllerTextlibra.getPiker(
                                  "Feature", 0xFF089BAB, FontWeight.w600, 5.5)
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_8()),
                          Container(
                            width: ScreenSize.fSize_90(),
                            height: ScreenSize.horizontalBlockSize! * 1.2,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFCEEBEE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                          ),
                          SizedBox(height: ScreenSize.fSize_30()),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 0.1),
                              controllerShare.getPiker(() {
                                controller.showbuttonad(context,
                                    '/In_App_Privacy', '/GetStarted', '');
                              }, "Privacy", "assert/Icon/privacy.png"),
                              controllerShare.getPiker(
                                  shareURL, "Rate", "assert/Icon/rate.png"),
                              controllerShare.getPiker(
                                  () => Share.share(
                                      "https://in.linkedin.com/company/infinitizi?trk=ppro_cprof"),
                                  "Share",
                                  "assert/Icon/share.png"),
                              SizedBox(
                                  width: ScreenSize.horizontalBlockSize! * 0.1),
                            ],
                          ),
                          SizedBox(height: ScreenSize.fSize_18()),
                        ],
                      )),
                ),
                SizedBox(height: ScreenSize.fSize_80()),
              ],
            ),
          ),
          banner.getBN('/GetStarted')
        ],
      ),
    );
  }

  shareURL() async {
    const url = 'https://in.linkedin.com/company/infinitizi?trk=ppro_cprof';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
