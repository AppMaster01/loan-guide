// ignore_for_file: deprecated_member_use, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Ad Controller/Back controller.dart';

class BankContact extends StatefulWidget {
  const BankContact({super.key});

  @override
  State<BankContact> createState() => _BankContactState();
}

class _BankContactState extends State<BankContact> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/BankContact', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/BankContact', '');
        }, '${abc[0]}'),
        body: Column(
          children: [
            SizedBox(height: ScreenSize.horizontalBlockSize! * 10),
            controllerbank.getPiker("Bank Balance", "${abc[1]}", () {
              BankNumber(abc[1]);
            }),
            controllerbank.getPiker("Customer Care Number", "${abc[2]}", () {
              BankNumber(abc[2]);
            }),
          ],
        ),
      ),
    );
  }
}

BankNumber(number) async {
  String url = 'tel: $number';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

final controllerbank = Get.put(BankRoundController());

class BankRoundController extends GetxController {
  getPiker(text, number, ontap) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenSize.fSize_10(),
          right: ScreenSize.fSize_10(),
          bottom: ScreenSize.fSize_14()),
      child: controllerContainer.getPiker(
          double.infinity,
          100,
          Column(
            children: [
              SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
              Row(
                children: [
                  SizedBox(width: ScreenSize.horizontalBlockSize! * 6),
                  Container(
                    width: ScreenSize.horizontalBlockSize! * 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        controllerTextlibra.getPiker(
                            text, 0xFF93969F, FontWeight.w500, 3),
                        SizedBox(height: ScreenSize.horizontalBlockSize! * 1.4),
                        controllerTextlibra.getPiker(
                            number, 0xFF000000, FontWeight.w600, 4),
                      ],
                    ),
                  ),
                  // SizedBox(width: ScreenSize.horizontalBlockSize! * 6),
                  GestureDetector(
                    onTap: ontap,
                    child: controllercircle.getPiker(
                        15, "assert/Icon/call.png", 7.5),
                  )
                ],
              ),
              SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
            ],
          )),
    );
  }
}
