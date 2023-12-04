// ignore_for_file: camel_case_types, non_constant_identifier_names, await_only_futures

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loan_guide/Ad%20Controller/Back%20controller.dart';
import 'package:loan_guide/Ad%20Controller/Google_Ads.dart';
import 'package:loan_guide/Media_Qury/Media.dart';
import 'package:loan_guide/Widget_Controller/Controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

String CopyText =
    "https://www.bajajfinserv.in/instant-personal-loan-on-aadhar-card";

class Get_Link_For_Bank extends StatefulWidget {
  const Get_Link_For_Bank({super.key});

  @override
  State<Get_Link_For_Bank> createState() => _Get_Link_For_BankState();
}

class _Get_Link_For_BankState extends State<Get_Link_For_Bank> {
  var BNAME = "".obs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Getdata();
  }

  Getdata() async {
    var prefs = await SharedPreferences.getInstance();
    BNAME.value = (await prefs.getString('NAME'))!;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/Get_Link_For_Bank', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Obx(() => Text(BNAME.value)),
          titleTextStyle: GoogleFonts.prozaLibre(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: ScreenSize.fSize_18()),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              backbuttoncontroller.showBackbuttonad(
                  context, '/Get_Link_For_Bank', '');
            },
            child: Center(
                child:
                    controllerImage.getPiker('assert/Icon/Arrow - Left.png', 8)),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: controllerContainer.getPiker(
                              double.infinity,
                              5,
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    controllerTextlibra.getPiker("Step 1",
                                        0xFF93969F, FontWeight.w500, 3.5),
                                    SizedBox(height: ScreenSize.fSize_10()),
                                    controllerTextlibra.getPiker(
                                        """Click below ‘Copy Link’ Button to copy bank website link. """,
                                        0xff000000,
                                        FontWeight.w500,
                                        3.5),
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  ),
                  controllerNextButoon.getPiker(() {
                    // controller.showbuttonad(
                    //     context, '/Get_Link_For_Bank', '/Get_Link_For_Bank', '');
                    Clipboard.setData(ClipboardData(text: CopyText));
                    Fluttertoast.showToast(
                      msg: "Link copied",
                      toastLength: Toast.LENGTH_SHORT,
                      timeInSecForIosWeb: 3,
                      textColor: const Color(0xff000000),
                      gravity: ToastGravity.SNACKBAR,
                      backgroundColor: const Color(0xFFCEEBEE),
                      fontSize: ScreenSize.fSize_15(),
                    );
                  }, 58, "Copy Link"),
                  SizedBox(height: ScreenSize.fSize_80()),
                ],
              ),
            ),
            banner.getBN('/Get_Link_For_Bank')
          ],
        ),
      ),
    );
  }
}
