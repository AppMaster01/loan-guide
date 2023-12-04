// ignore_for_file: camel_case_types, non_constant_identifier_names, invalid_use_of_protected_member, use_build_context_synchronously, file_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../Ad Controller/Back controller.dart';
import '../../../../Ad Controller/Google_Ads.dart';
import '../../../../Ad Controller/Tap Controller.dart';
import '../../../../Media_Qury/Media.dart';
import 'Form_1.dart';

class Form_2 extends StatefulWidget {
  const Form_2({Key? key}) : super(key: key);

  @override
  State<Form_2> createState() => _Form_2State();
}

class _Form_2State extends State<Form_2> {
  RxBool form2 = false.obs;
  final EMIAL = TextEditingController().obs;
  final ADDS = TextEditingController().obs;
  final STATE = TextEditingController().obs;
  final CITY = TextEditingController().obs;
  final ZIP = TextEditingController().obs;
  final County = TextEditingController().obs;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    EMIAL.value.dispose();
    ADDS.value.dispose();
    STATE.value.dispose();
    ZIP.value.dispose();
    CITY.value.dispose();
    County.value.dispose();
  }



  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Form_2', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Form_2', '');
        }, "Fill up Form"),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(
                () => Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controllerindicatorwhite.getText(),
                        SizedBox(width: ScreenSize.fSize_6()),
                        controllerindicator.getText(),
                        SizedBox(width: ScreenSize.fSize_6()),
                        controllerindicatorwhite.getText(),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_30()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_15()),
                        controllerTextlibra.getPiker("Personal Details :",
                            0xff000000, FontWeight.w700, 5)
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_30()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        EMIAL.value,
                        "Enter Email Address",
                        TextInputType.emailAddress),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(double.infinity,
                        ADDS.value, "Enter Address", TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        STATE.value,
                        "Enter State/ Province",
                        TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_15()),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: ScreenSize.horizontalBlockSize! * 50),
                          child: controllerFilledController.gettextfiled(
                              ScreenSize.fSize_160(),
                              ZIP.value,
                              "Enter Zipcode",
                              TextInputType.number),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                right: ScreenSize.horizontalBlockSize! * 45),
                            child: controllerFilledController.gettextfiled(
                                ScreenSize.fSize_160(),
                                CITY.value,
                                "Enter City",
                                TextInputType.name)),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(
                        ScreenSize.fSize_160(),
                        County.value,
                        "Enter County",
                        TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_40()),

                    controllerNextButoon.getPiker(() async {
                      Data.value.addAll({
                        "EMIAL": EMIAL.value.text,
                        "ADDS": ADDS.value.text,
                        "STATE": STATE.value.text,
                        "CITY": CITY.value.text,
                        "ZIP": ZIP.value.text,
                        "County": County.value.text,
                      });
                      if (EMIAL.value.text.isEmpty ||
                          ADDS.value.text.isEmpty ||
                          STATE.value.text.isEmpty ||
                          CITY.value.text.isEmpty ||
                          ZIP.value.text.isEmpty ||
                          County.value.text.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "Cannot be empty",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.red,
                          fontSize: 15,
                        );
                      } else if (EMIAL.value.text.isNotEmpty ||
                          ADDS.value.text.isNotEmpty ||
                          STATE.value.text.isNotEmpty ||
                          CITY.value.text.isNotEmpty ||
                          ZIP.value.text.isNotEmpty ||
                          County.value.text.isNotEmpty) {
                        var prefs = await SharedPreferences.getInstance();
                        await prefs.setString('emailll', EMIAL.value.text);
                        await prefs.setString('Adres', ADDS.value.text);
                        await prefs.setString('State', STATE.value.text);
                        await prefs.setString('zip', CITY.value.text);
                        await prefs.setString('cityy', ZIP.value.text);
                        await prefs.setString('Countryyyyyy', County.value.text);
                        controller.showbuttonad(
                            context, '/Form_3', '/Form_2', [abc[0],abc[1]]);
                      }
                      // controller.showbuttonad(
                      //     context, '/Form_3', '/Form_2', [abc[0],abc[1]]);

                    }, 18, "Next"),
                    SizedBox(height: ScreenSize.fSize_180()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Form_2'),
          ],
        ),
      ),
    );
  }
}
