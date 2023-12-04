// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import 'Model.dart';

class Bank_Holiday_Details extends StatefulWidget {
  const Bank_Holiday_Details({super.key});

  @override
  State<Bank_Holiday_Details> createState() => _Bank_Holiday_DetailsState();
}

class _Bank_Holiday_DetailsState extends State<Bank_Holiday_Details> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Bank_Holiday_Details', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/Bank_Holiday_Details', '');
        }, '${abc[0]}'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  FutureBuilder(
                    future: DefaultAssetBundle.of(context)
                        .loadString("Jsonfile/bankholiday.json"),
                    builder: (context, snapshot) {
                      var jsondata = json.decode(snapshot.data.toString());
                      Holiday User = Holiday.fromJson(jsondata);
                      if (snapshot.hasData) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: User.bankHoliDay!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(5),
                                child: controllerContainer.getPiker(
                                    double.infinity,
                                    4,
                                    Column(
                                      children: [
                                        SizedBox(height: ScreenSize.fSize_8()),
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: ScreenSize.fSize_15()),
                                            controllerTextlibra.getPiker(
                                                User.bankHoliDay![index].holiDayName.toString(),
                                                0xff93969F,
                                                FontWeight.w700,
                                                3.5),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: ScreenSize.fSize_15()),
                                            controllerTextlibra.getPiker(
                                                User.bankHoliDay![index].fulltDate.toString(),
                                                0xff000000,
                                                FontWeight.w700,
                                                3.8)
                                          ],
                                        ),
                                        SizedBox(height: ScreenSize.fSize_8()),
                                      ],
                                    )),
                              );
                            },
                          ),
                        );
                      } else {
                        return const Text("No data");
                      }
                    },
                  ),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Bank_Holiday_Details')
          ],
        ),
      ),
    );
  }
}
