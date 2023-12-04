import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Ad Controller/Back controller.dart';
import '../../Ad Controller/Google_Ads.dart';
import '../../Media_Qury/Media.dart';
import '../../Widget_Controller/Controller.dart';

class LoanDescription extends StatefulWidget {
  const LoanDescription({super.key});

  @override
  State<LoanDescription> createState() => _LoanDescriptionState();
}

class _LoanDescriptionState extends State<LoanDescription> {
  var abc = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () =>
          backbuttoncontroller.showBackbuttonad(context, '/LoanDescription', ''),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: controllerappbar.getPiker(() {
          backbuttoncontroller.showBackbuttonad(
              context, '/LoanDescription', '');
        }, '${abc[0]}'),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: ScreenSize.horizontalBlockSize! * 6,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(12),
                      child: controllerdetailsText.getPiker("""${abc[1]}"""))
                ],
              ),
            ),
            banner.getBN('/LoanDescription')
          ],
        ),
      ),
    );
  }
}
