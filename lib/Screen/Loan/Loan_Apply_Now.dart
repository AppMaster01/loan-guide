// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Media_Qury/Media.dart';

class Loan_Apply_Now extends StatefulWidget {
  const Loan_Apply_Now({super.key});

  @override
  State<Loan_Apply_Now> createState() => _Loan_Apply_NowState();
}

class _Loan_Apply_NowState extends State<Loan_Apply_Now> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => backbuttoncontroller.showBackbuttonad(context, '/Loan_Apply_Now', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Loan_Apply_Now', '');
        }, "Loan Type"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 8),
                  Padding(
                    padding: EdgeInsets.only(
                        right: ScreenSize.horizontalBlockSize! * 3.5,
                        left: ScreenSize.horizontalBlockSize! * 3.5),
                    child: controllerListContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Credit_Score', '/Loan_Apply_Now', '');
                    }, 'assert/Icon/apply now.png', 'Apply Now'),
                  ),
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 3),
                  Padding(
                    padding: EdgeInsets.only(
                        right: ScreenSize.horizontalBlockSize! * 3.5,
                        left: ScreenSize.horizontalBlockSize! * 3.5),
                    child: controllerListContainer.getPiker(() {
                      controller.showbuttonad(
                          context, '/Loan_Details', '/Loan_Apply_Now', '');
                    }, 'assert/Icon/loan type.png', 'Type of Loan'),
                  ),
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 15),
                  native.getNT(context, '/Loan_Apply_Now', 'listTileMedium'),
                  native.getNT(context, '/Loan_Apply_Now', 'listTile'),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Loan_Apply_Now')
          ],
        ),
      ),
    );
  }
}
