// ignore_for_file: camel_case_types, non_constant_identifier_names, invalid_use_of_protected_member, use_build_context_synchronously

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

class Form_3 extends StatefulWidget {
  const Form_3({Key? key}) : super(key: key);

  @override
  State<Form_3> createState() => _Form_3State();
}

class _Form_3State extends State<Form_3> {
  final number = TextEditingController().obs;
  final Account = TextEditingController().obs;
  final Salary = TextEditingController().obs;
  RxBool form4 = false.obs;
  var abc = Get.arguments;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    number.value.dispose();
    Account.value.dispose();
    Salary.value.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Form_3', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(context, '/Form_3', '');
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
                        controllerindicatorwhite.getText(),
                        SizedBox(width: ScreenSize.fSize_6()),
                        controllerindicator.getText(),
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_40()),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize.fSize_15()),
                        controllerTextlibra.getPiker("Contact  Details :",
                            0xff000000, FontWeight.w700, 4.5)
                      ],
                    ),
                    SizedBox(height: ScreenSize.fSize_30()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        number.value,
                        "Enter Phone Number",
                        TextInputType.number),
                    SizedBox(height: ScreenSize.fSize_20()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        Account.value,
                        "Enter Account Number",
                        TextInputType.number),
                    SizedBox(height: ScreenSize.fSize_20()),
                    controllerFilledController.gettextfiled(
                        double.infinity,
                        Salary.value,
                        'Enter Salary Amount',
                        TextInputType.number),
                    SizedBox(height: ScreenSize.fSize_20()),
                    controllerNextButoon.getPiker(() async {
                      Data.value.addAll({
                        "number": number.value.text,
                        "Account": Account.value.text,
                        "Salary": Salary.value.text,
                      });
                      if (number.value.text.isEmpty ||
                          Account.value.text.isEmpty ||
                          Salary.value.text.isEmpty) {
                        Fluttertoast.showToast(
                          msg: "Cannot be empty",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 3,
                          textColor: Colors.white,
                          gravity: ToastGravity.SNACKBAR,
                          backgroundColor: Colors.red,
                          fontSize: 15,
                        );
                      } else if (number.value.text.isNotEmpty ||
                          Account.value.text.isNotEmpty ||
                          Salary.value.text.isNotEmpty) {
                        var prefs = await SharedPreferences.getInstance();
                        await prefs.setString('PHONNUMBER', number.value.text);
                        await prefs.setString('NUMBER', Account.value.text);
                        await prefs.setString('SALARYY', Salary.value.text);
                        controller.showbuttonad(
                            context, '/Loan_Overview', '/Form_3', [abc[0],abc[1]]);
                      }
                      // controller.showbuttonad(
                      //     context, '/Loan_Overview', '/Form_3', [abc[0],abc[1]]);
                      var prefs = await SharedPreferences.getInstance();
                      var userData = Data..value;
                      prefs.setString('name', userData.toString());
                    }, 38, "Next"),
                    SizedBox(height: ScreenSize.fSize_70()),
                  ],
                ),
              ),
            ),
            banner.getBN('/Form_3'),
          ],
        ),
      ),
    );
  }
}
