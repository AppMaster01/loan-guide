// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Tap Controller.dart';
import '../../Media_Qury/Media.dart';

final controlleractivate = Get.put(activatecontroller());
final controllercopylink = Get.put(copylinkcontroller());
final controllerclime = Get.put(climecontroller());
final controllerdetails1 = Get.put(details1controller());
final controllerwhitelist = Get.put(whitelistController());
final controllerdiscrip = Get.put(discripcontroller());
final controllerwhitecontainr2 = Get.put(whitecontainerController2());
final controllerText = Get.put(textcontroller());

class activatecontroller extends GetxController {
  getText() {
    return controllerContainer.getPiker(
        double.infinity,
        4,
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              controllerTextlibra.getPiker("""✤ Ways to Check EPF Balance Online

✤The EPFO has been introducing new methods for employees to check the EPF balance and is in the process of developing the existing platforms that can be used.

✤ Online Portal

✤ SMS Service

✤ Missed Call""", 0xff000000, FontWeight.w500, 3.5),
            ],
          ),
        ));
  }
}

class copylinkcontroller extends GetxController {
  getText(text1, text2) {
    return Column(
      children: [
        SizedBox(height: ScreenSize.fSize_20()),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(
                text:
                    "https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card"));
            Fluttertoast.showToast(
              msg: "Link copied",
              toastLength: Toast.LENGTH_LONG,
              timeInSecForIosWeb: 3,
              textColor: Colors.black,
              gravity: ToastGravity.SNACKBAR,
              backgroundColor: Color(0xFFCEEBEE),
              fontSize: 15,
            );
          },
          child: Padding(
              padding: EdgeInsets.only(
                  right: ScreenSize.fSize_10(), left: ScreenSize.fSize_10()),
              child: controllerContainer.getPiker(
                  double.infinity,
                  4,
                  Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_15()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          controllerImage.getPiker("assert/copy.png", 5.5),
                          SizedBox(width: ScreenSize.fSize_8()),
                          controllerTextlibra.getPiker(
                              "Copy Link", 0xff000000, FontWeight.w600, 4.1),
                        ],
                      ),
                      SizedBox(height: ScreenSize.fSize_15()),
                    ],
                  ))),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: controllerContainer.getPiker(
              double.infinity,
              4,
              Column(
                children: [
                  SizedBox(height: ScreenSize.fSize_25()),
                  Container(
                      width: ScreenSize.fSize_250(),
                      child: Text(
                        text1,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.prozaLibre(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_14(),
                            fontWeight: FontWeight.w500),
                      )),
                  SizedBox(height: ScreenSize.fSize_25()),
                  Container(
                      width: ScreenSize.fSize_200(),
                      child: Text(
                        text2,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.prozaLibre(
                            color: Colors.black,
                            fontSize: ScreenSize.fSize_16(),
                            fontWeight: FontWeight.w500),
                      )),
                  SizedBox(height: ScreenSize.fSize_25()),
                ],
              )),
        )
      ],
    );
  }
}

class climecontroller extends GetxController {
  getText() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: text.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      controller.showbuttonad(context, '/Claim_Details',
                          '/Show_Details', LINK.value[index]);
                    },
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: controllerContainer.getPiker(
                          double.infinity,
                          100,
                          Column(
                            children: [
                              SizedBox(height: ScreenSize.fSize_6()),
                              Row(
                                children: [
                                  SizedBox(width: ScreenSize.fSize_10()),
                                  Container(
                                    width: ScreenSize.horizontalBlockSize! * 72,
                                    child: Row(
                                      children: [
                                        // Container(
                                        //     height: ScreenSize.fSize_60(),
                                        //     width: ScreenSize.fSize_60(),
                                        //     decoration: BoxDecoration(
                                        //         borderRadius: BorderRadius.all(
                                        //             Radius.circular(100)),
                                        //         border: Border.all(
                                        //             color: Color(0xFF089BAB))),
                                        //     child:
                                        //     // Center(
                                        //     //   child: Container(
                                        //     //     width: ScreenSize.fSize_55(),
                                        //     //     height: ScreenSize.fSize_55(),
                                        //     //     decoration: ShapeDecoration(
                                        //     //       color: Colors.white,
                                        //     //       shape: OvalBorder(
                                        //     //         side: BorderSide(
                                        //     //           width: 1,
                                        //     //           strokeAlign: BorderSide
                                        //     //               .strokeAlignOutside,
                                        //     //           color: Color(0xFFCEEBEE),
                                        //     //         ),
                                        //     //       ),
                                        //     //     ),
                                        //     //     child: Center(
                                        //     //         child:
                                        //     //         controllerImage.getPiker(
                                        //     //             "${image[index]}",
                                        //     //             9)),
                                        //     //   ),
                                        //     // ),
                                        //     ),
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            controllerImage.getPiker(
                                                "assert/Group 68.png", 15),
                                            Image(
                                                image: AssetImage(
                                                    "${image[index]}"),
                                                color: Colors.white,
                                                height: ScreenSize
                                                        .horizontalBlockSize! *
                                                    7.5),
                                          ],
                                        ),
                                        // controllercircle.getPiker(
                                        //     15, "${image[index]}", 7.5),
                                        SizedBox(
                                            width: ScreenSize
                                                    .horizontalBlockSize! *
                                                5),
                                        Container(
                                          width:
                                              ScreenSize.horizontalBlockSize! *
                                                  48,
                                          child: Text(
                                            '${text[index]}',
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.prozaLibre(
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w600,
                                                fontSize: ScreenSize
                                                        .horizontalBlockSize! *
                                                    4.1),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  controllerImage.getPiker(
                                      'assert/Icon/Arrow - Right.png', 7)
                                ],
                              ),
                              SizedBox(height: ScreenSize.fSize_6()),
                            ],
                          )),
                    )
                    // controllerwhitecontainr2.get(
                    //     color[index], color[index], image[index], text[index]),
                    );
              },
            ),
          )
        ],
      ),
    );
  }
}

class details1controller extends GetxController {
  getText(child) {
    return controllerwhitelist.get(child);
  }
}

List color = [
  const Color(0xffE2FBDB),
  const Color(0xffFEEBDA),
  const Color(0xffF5E5FF),
];
List image = [
  "assert/Claim/Claim Status.png",
  "assert/Claim/Member Claim.png",
  "assert/Claim/Apply For Claim.png",
];
List text = [
  "Your Claim Status",
  "Member Claim",
  "Apply for Claim",
];

class whitelistController extends GetxController {
  get(child) {
    return Padding(
      padding: EdgeInsets.only(
          right: ScreenSize.fSize_10(), left: ScreenSize.fSize_10()),
      child: Padding(
          padding: EdgeInsets.all(10),
          child: controllerContainer.getPiker(double.infinity, 4, child)),
    );
  }
}

class discripcontroller extends GetxController {
  getText(text) {
    return Container(
        width: ScreenSize.horizontalBlockSize! * 80,
        child: Text(
          text,
          style: GoogleFonts.prozaLibre(
              color: Colors.black,
              fontSize: ScreenSize.fSize_12(),
              fontWeight: FontWeight.w500),
        ));
  }
}

class whitecontainerController2 extends GetxController {
  get(colorring, colorcontain, image, text) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: ScreenSize.horizontalBlockSize! * 17,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: ScreenSize.fSize_20()),
                Center(
                  child: Container(
                    width: ScreenSize.horizontalBlockSize! * 11.5,
                    height: ScreenSize.horizontalBlockSize! * 11.5,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 0.40, color: colorring),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: ScreenSize.fSize_34(),
                        height: ScreenSize.fSize_34(),
                        decoration: ShapeDecoration(
                          color: colorcontain,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                            child: Image(
                          image: AssetImage(image),
                          height: ScreenSize.fSize_25(),
                        )),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: ScreenSize.fSize_30()),
                controllerText.getText(
                    text, ScreenSize.fSize_16(), FontWeight.w700),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: ScreenSize.fSize_12()),
            child: Center(
                child: Image(
              image: const AssetImage('asset/image/Icon/chevron-right.png'),
              height: ScreenSize.fSize_25(),
            )),
          ),
        ]),
      ),
    );
  }
}

class textcontroller extends GetxController {
  getText(text, size, wight) {
    return Text(
      text,
      style: GoogleFonts.prozaLibre(
          color: Colors.black, fontSize: size, fontWeight: wight),
    );
  }
}

var LINK = [
  """https://unifiedportal.epfindia.gov.in/""",
  """https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card""",
  """https://unifiedportal-mem.epfindia.gov.in/memberinterface/"""
].obs;
