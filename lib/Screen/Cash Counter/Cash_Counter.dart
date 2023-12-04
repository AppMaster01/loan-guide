// ignore: file_names
// ignore_for_file: camel_case_types, sized_box_for_whitespace, invalid_use_of_protected_member, unrelated_type_equality_checks, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';

import '../../Media_Qury/Media.dart';

class Cash_Counter extends StatefulWidget {
  const Cash_Counter({super.key});

  @override
  State<Cash_Counter> createState() => _Cash_CounterState();
}

class _Cash_CounterState extends State<Cash_Counter> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Cash_Counter', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Cash_Counter', '');
        }, "Cash Counter"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    height: ScreenSize.horizontalBlockSize! * 145,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: CountList.value.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(7),
                            child: controllerContainer.getPiker(
                                double.infinity,
                                4,
                                Column(
                                  children: [
                                    SizedBox(height: ScreenSize.fSize_20()),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        controllerCash.getText(
                                            () {},
                                            ScreenSize.fSize_90(),
                                            ScreenSize.fSize_40(),
                                            100,
                                            Obx(
                                              () => Center(
                                                child: controllerTextlibra.getPiker(
                                                    '${AmountData.value[index]}',
                                                    0xffffffff,
                                                    FontWeight.w600,
                                                    4.5),
                                              ),
                                            )),
                                        Obx(
                                          () => Container(
                                            width: ScreenSize
                                                    .horizontalBlockSize! *
                                                30,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                controllerCash.getText(() {
                                                  CountList.value[index] <= 0
                                                      ? 0
                                                      : CountList
                                                          .value[index]--;
                                                  ResultList.value[index] =
                                                      AmountData.value[index] *
                                                          CountList
                                                              .value[index];
                                                  ResultList.refresh();
                                                  CountList.refresh();
                                                  AmountData.refresh();
                                                },
                                                    ScreenSize
                                                            .horizontalBlockSize! *
                                                        8,
                                                    ScreenSize
                                                            .horizontalBlockSize! *
                                                        8,
                                                    100,
                                                    Center(
                                                      child: Image(
                                                          image: const AssetImage(
                                                              "assert/minus-sign.png"),
                                                          color: Colors.white,
                                                          height: ScreenSize
                                                                  .horizontalBlockSize! *
                                                              4.5),
                                                    )),
                                                controllerTextlibra.getPiker(
                                                    '${CountList.value[index]}',
                                                    0xff000000,
                                                    FontWeight.w500,
                                                    4.1),
                                                controllerCash.getText(() {
                                                  CountList.value[index]++;
                                                  ResultList.value[index] =
                                                      AmountData.value[index] *
                                                          CountList
                                                              .value[index];
                                                  ResultList.refresh();
                                                  CountList.refresh();
                                                  AmountData.refresh();
                                                },
                                                    ScreenSize
                                                            .horizontalBlockSize! *
                                                        8,
                                                    ScreenSize
                                                            .horizontalBlockSize! *
                                                        8,
                                                    100,
                                                    const Center(
                                                      child: Icon(Icons.add,
                                                          color: Colors.white),
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Obx(
                                          () => Container(
                                            width: ScreenSize.fSize_90(),
                                            height: ScreenSize.fSize_40(),
                                            decoration: ShapeDecoration(
                                              color: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                side: const BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFCEEBEE)),
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                              ),
                                            ),
                                            child: Center(
                                              child: controllerTextlibra.getPiker(
                                                  '${AmountData.value[index] * CountList.value[index]}',
                                                  0xff000000,
                                                  FontWeight.w600,
                                                  4.5),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: ScreenSize.fSize_20()),
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                  ),
                  Obx(
                    () => Padding(
                        padding: const EdgeInsets.all(18),
                        child: controllerContainer.getPiker(
                            double.infinity,
                            100,
                            Padding(
                              padding: const EdgeInsets.all(17),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      controllerTextlibra.getPiker("Total :-",
                                          0xff000000, FontWeight.w500, 4.1),
                                      controllerTextlibra.getPiker(
                                          "${ResultList.value == "" ? ResultList.value[0] : ResultList.value[0] + ResultList.value[1] + ResultList.value[2] + ResultList.value[3] + ResultList.value[4] + ResultList.value[5] + ResultList.value[6]}/-",
                                          0xff000000,
                                          FontWeight.w500,
                                          4.1)
                                    ],
                                  ),
                                  // SizedBox(height: ScreenSize.fSize_15()),
                                ],
                              ),
                            ))),
                  ),
                  SizedBox(
                    height: ScreenSize.fSize_80(),
                  )
                ],
              ),
            ),
            SizedBox(height: ScreenSize.fSize_80()),
            banner.getBN('/Cash_Counter')
          ],
        ),
      ),
    );
  }

  var CountList = [0, 0, 0, 0, 0, 0, 0].obs;
  var ResultList = [0, 0, 0, 0, 0, 0, 0].obs;
  var AmountData = [2000, 500, 200, 100, 50, 20, 10].obs;
}
