
// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Ad%20Controller/Tap%20Controller.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Ad Controller/Back controller.dart';
import 'Model.dart';

class Bank_Info extends StatefulWidget {
  const Bank_Info({super.key});

  @override
  State<Bank_Info> createState() => _Bank_InfoState();
}

class _Bank_InfoState extends State<Bank_Info> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Bank_Info', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Bank_Info', '');
        }, "Bank Info"),
        body: Stack(
          children: [
            FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString("Jsonfile/banklist.json"),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var jsondata = json.decode(snapshot.data.toString());
                  // ignore: non_constant_identifier_names
                  Bank User = Bank.fromJson(jsondata);
                  return SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: ScreenSize.fSize_10()),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: User.data!.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.showbuttonad(
                                      context, '/BankContact', '/Bank_Info', [
                                    User.data![index].bankName,
                                    User.data![index].balanceNumber,
                                    User.data![index].careNumber,
                                  ]);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: controllerContainer.getPiker(
                                      double.infinity,
                                      100,
                                      Column(
                                        children: [
                                          SizedBox(height: ScreenSize.fSize_6()),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  width: ScreenSize.fSize_10()),
                                              Container(
                                                width: ScreenSize
                                                        .horizontalBlockSize! *
                                                    72,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height:
                                                          ScreenSize.fSize_60(),
                                                      width:
                                                          ScreenSize.fSize_60(),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              const BorderRadius.all(
                                                                  Radius.circular(
                                                                      100)),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xFF089BAB))),
                                                      child: Center(
                                                        child: Container(
                                                          width: ScreenSize
                                                              .fSize_55(),
                                                          height: ScreenSize
                                                              .fSize_55(),
                                                          decoration:
                                                              const ShapeDecoration(
                                                            color: Colors.white,
                                                            shape: OvalBorder(
                                                              side: BorderSide(
                                                                width: 1,
                                                                strokeAlign:
                                                                    BorderSide
                                                                        .strokeAlignOutside,
                                                                color: Color(
                                                                    0xFFCEEBEE),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Center(
                                                              child: controllerTextlibra
                                                                  .getPiker(
                                                                      // ignore: unnecessary_string_interpolations
                                                                      '${User.data![index].bankName![0]}',
                                                                      0xFF182032,
                                                                      FontWeight
                                                                          .w600,
                                                                      7)),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        width: ScreenSize
                                                                .horizontalBlockSize! *
                                                            5),
                                                    Container(
                                                      width: ScreenSize
                                                              .horizontalBlockSize! *
                                                          48,
                                                      child: Text(
                                                        '${User.data![index].bankName}',
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        style: GoogleFonts.prozaLibre(
                                                            color:
                                                                const Color(0xff000000),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: ScreenSize
                                                                    .horizontalBlockSize! *
                                                                4.1),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              controllerImage.getPiker(
                                                  'assert/Icon/Arrow - Right.png',
                                                  7)
                                            ],
                                          ),
                                          SizedBox(height: ScreenSize.fSize_6()),
                                        ],
                                      )),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: ScreenSize.fSize_80()),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text("No data"));
                }
              },
            ),
            banner.getBN('/Bank_Info')
          ],
        ),
      ),
    );

  }
}
