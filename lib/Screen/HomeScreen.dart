// ignore_for_file: deprecated_member_use, non_constant_identifier_names, sized_box_for_whitespace, invalid_use_of_protected_member, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    return exitResult ?? false;
  }

  Scaffold _buildExitDialog(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: ScreenSize.horizontalBlockSize! * 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  border: Border.all(color: const Color(0xffE2E6EA))),
              child: Column(children: [
                SizedBox(height: ScreenSize.fSize_34()),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    controllerImage.getPiker("assert/Group 68.png", 17),
                    Image(
                      image: const AssetImage('assert/logout.png'),
                      height: ScreenSize.horizontalBlockSize! * 8.5,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_34()),
                Container(
                  width: ScreenSize.horizontalBlockSize! * 70,
                  child: Text(
                    'Are you sure you want to Quit?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.prozaLibre(
                        color: Colors.black,
                        fontSize: ScreenSize.fSize_20(),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_34()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    controllerCash.getText(
                        () => SystemNavigator.pop(),
                        ScreenSize.fSize_100(),
                        ScreenSize.fSize_40(),
                        100,
                        Center(
                          child: controllerTextlibra.getPiker(
                              'Yes', 0xffffffff, FontWeight.w500, 4.1),
                        )),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(false),
                      child: Container(
                        width: ScreenSize.fSize_100(),
                        height: ScreenSize.fSize_40(),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Color(0xFFCEEBEE)),
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        child: Center(
                          child: controllerTextlibra.getPiker(
                              'No', 0xff000000, FontWeight.w600, 4.5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_10())
              ]),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Center(
                        child: controllerTextlibra.getPiker(
                            "Cash Loan Guide", 0xff000000, FontWeight.w500, 7)),
                    SizedBox(height: ScreenSize.fSize_30()),
                    controllerHomeContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Loan_page', '/HomeScreen', '');
                    }, "assert/Icon/loan.png", "Loan",
                        "How To Get Quick Loan Guide"),
                    SizedBox(height: ScreenSize.fSize_12()),
                    Padding(
                      padding: EdgeInsets.only(
                          right: ScreenSize.fSize_12(),
                          left: ScreenSize.fSize_12()),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: PageData.value.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.99),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context,
                                  '${PageData.value[index]}',
                                  '/HomeScreen',
                                  '');
                            },
                            child: Container(
                              decoration: ShapeDecoration(
                                color: const Color(0xFFF6FFFF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                    color: Color(0xFF089BAB),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: ScreenSize.fSize_10()),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      controllercircle.getPiker(
                                          15, "${IMAGE.value[index]}", 7.5),
                                      SizedBox(width: ScreenSize.fSize_10()),
                                    ],
                                  ),
                                  SizedBox(height: ScreenSize.fSize_30()),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: ScreenSize.fSize_10()),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        controllerTextlibra.getPiker(
                                            "${TEXT.value[index]}",
                                            0xff000000,
                                            FontWeight.w600,
                                            5),
                                        SizedBox(
                                            height: ScreenSize
                                                    .horizontalBlockSize! *
                                                2),
                                        controllerTextlibra.getPiker(
                                            "${TEXT1.value[index]}",
                                            0xFF93969F,
                                            FontWeight.w400,
                                            3.2),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    controllerHomeContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Cash_Counter', '/HomeScreen', '');
                    }, "assert/Icon/cash counter.png", "Cash Counter",
                        "Count Your Currency"),
                    SizedBox(height: ScreenSize.fSize_12()),
                    controllerHomeContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Calculator', '/HomeScreen', '');
                    }, "assert/Icon/emi calculator.png", "EMI Calculator",
                        "Check EMI Details"),
                    SizedBox(height: ScreenSize.fSize_12()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        controllerHomeContainer1.getPiker(() {
                          launchATMUrl('Near Banks');
                        }, "assert/Icon/near bank.png", "Near Bank",
                            "Check Near Bank"),
                        controllerHomeContainer1.getPiker(() {
                          launchATMUrl('Near ATM');
                        }, "assert/Icon/near atm.png", "Near ATM",
                            "Check Near ATM"),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_12()),
                    controllerHomeContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Bank_Holiday', '/HomeScreen', '');
                    }, "assert/Icon/bank holiday.png", "Bank Holiday",
                        "Check Bank Holiday"),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/HomeScreen')
            ],
          ),
        ),
      ),
    );
  }

  launchATMUrl(String lat) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  var IMAGE = [
    "assert/Icon/loan type.png",
    "assert/Icon/loan guide.png",
    "assert/Icon/bank info.png",
    "assert/Icon/epf service.png",
  ].obs;

  var TEXT = [
    "Loan Type",
    "Loan Guide",
    "Bank Info",
    "EPF Service",
  ].obs;

  var TEXT1 = [
    "All Type Of Loan",
    "Instant Loan Guide",
    "Check Bank Details",
    "Details of  EPF Service",
  ].obs;
  var PageData = [
    '/Loan_Details',
    '/Loan_Guide',
    '/Bank_Info',
    '/Epf_Service',
  ].obs;
}
