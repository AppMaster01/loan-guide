// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names, invalid_use_of_protected_member, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../Ad Controller/Back controller.dart';
import '../../../../Ad Controller/Google_Ads.dart';
import '../../../../Ad Controller/Tap Controller.dart';
import '../../../../Media_Qury/Media.dart';

var Data = {}.obs;

class Form_1 extends StatefulWidget {
  const Form_1({Key? key}) : super(key: key);

  @override
  State<Form_1> createState() => _Form_1State();
}

class _Form_1State extends State<Form_1> {
  final FirstName = TextEditingController().obs;
  final LastName = TextEditingController().obs;
  final MiddleName = TextEditingController().obs;
  final DateBirth = TextEditingController().obs;

  var abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    FirstName.value.dispose();
    LastName.value.dispose();
    MiddleName.value.dispose();
    DateBirth.value.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Form_1', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Form_1', '');
        }, "Fill up Form"),
        body: Obx(
          () => Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: ScreenSize.fSize_20()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controllerindicator.getText(),
                        SizedBox(width: ScreenSize.fSize_6()),
                        controllerindicatorwhite.getText(),
                        SizedBox(width: ScreenSize.fSize_6()),
                        controllerindicatorwhite.getText(),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_40()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_15()),
                        controllerTextlibra.getPiker("Personal Details :",
                            0xff000000, FontWeight.w700, 5)
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_25()),
                    controllerFilledController.gettextfiled(double.infinity,
                        FirstName.value, "First Name", TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(double.infinity,
                        LastName.value, "Last Name", TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(double.infinity,
                        MiddleName.value, "Middle Name", TextInputType.name),
                    SizedBox(height: ScreenSize.fSize_15()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        DateBirth.value,
                        "Date of Birth",
                        TextInputType.datetime),
                    controllerNextButoon.getPiker(() async {
                      Data.value.addAll({
                        "Firstname": FirstName.value.text,
                        "LastName": LastName.value.text,
                        "MiddleName": MiddleName.value.text,
                        "DateBirth": DateBirth.value.text,
                      });
                      if (FirstName.value.text.isEmpty ||
                          LastName.value.text.isEmpty ||
                          MiddleName.value.text.isEmpty ||
                          DateBirth.value.text.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "Cannot be empty",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.red,
                          fontSize: 15,
                        );
                      } else if (FirstName.value.text.isNotEmpty ||
                          LastName.value.text.isNotEmpty ||
                          MiddleName.value.text.isNotEmpty ||
                          DateBirth.value.text.isNotEmpty) {
                        var prefs = await SharedPreferences.getInstance();
                        await prefs.setString(
                            'Firstname', FirstName.value.text.toString());
                        await prefs.setString(
                            'LastName', LastName.value.text.toString());
                        await prefs.setString(
                            'MiddleName', MiddleName.value.text.toString());
                        await prefs.setString(
                            'DateBirth', DateBirth.value.text.toString());
                        controller.showbuttonad(
                            context, '/Form_2', '/Form_1', [abc[0],abc[1]]);
                      }
                      // controller.showbuttonad(
                      //     context, '/Form_2', '/Form_1', [abc[0],abc[1]]);
                    }, 45, "Next"),
                    SizedBox(height: ScreenSize.fSize_80()),
                  ],
                ),
              ),
              banner.getBN('/Form_1'),
            ],
          ),
        ),
      ),
    );
  }
}
