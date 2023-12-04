// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Media_Qury/Media.dart';

final controllerTextlibra = Get.put(TEXTlibraController());
final controllerImage = Get.put(imageController());
final controllerDiscrip = Get.put(DiscripController());
final controllerContainer = Get.put(ContainerController());
final controllerShare = Get.put(ContainerShare());
final controllercircle = Get.put(ContainerCircle());
final controllerHomeContainer = Get.put(HomeContainerCircle());
final controllerHomeContainer1 = Get.put(HomeContainer1Circle());
final controllerRichtext = Get.put(RichText());
final controllerApplybutton = Get.put(ApplyButton());
final controllerappbar = Get.put(Appbar());
final controllerListContainer = Get.put(ListContainer());
final controllerdetailsText = Get.put(detailsContainer());
final controllerNextButoon = Get.put(NextButton());
final controllerfiled = Get.put(filedcontroller());
final controllerFilledController = Get.put(TextFiledcontroller());
final controllercaltext = Get.put(caltextcontroller());
final controllerdivider = Get.put(dividercontroller());
final controllerradio = Get.put(RadioButoon());
final controllerGst = Get.put(GstButton());
final controllerCalculate = Get.put(CaculateButton());
final controllerCraditScore = Get.put(CrradirScore());
final controllerindicatorwhite = Get.put(indicatorwhitecontroller());
final controllerindicator = Get.put(indicatorcontroller());
final controllerDetails = Get.put(Detailstextcontroller());
final controllerCash = Get.put(CashCountcontroller());
final controllerCASHCOUNTER = Get.put(CASHCOUNTcontroller());

class CASHCOUNTcontroller extends GetxController {
  getText(Firstamount, ontap, Count, ontap1, Result) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: controllerContainer.getPiker(
          double.infinity,
          4,
          Column(
            children: [
              SizedBox(height: ScreenSize.fSize_20()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  controllerCash.getText(
                      () {},
                      ScreenSize.fSize_90(),
                      ScreenSize.fSize_40(),
                      100,
                      Center(
                        child: controllerTextlibra.getPiker(
                            '$Firstamount', 0xffffffff, FontWeight.w600, 4.5),
                      )),
                  Container(
                    width: ScreenSize.horizontalBlockSize! * 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        controllerCash.getText(
                            ontap,
                            ScreenSize.horizontalBlockSize! * 8,
                            ScreenSize.horizontalBlockSize! * 8,
                            100,
                            Center(
                              child: Image(
                                  image: const AssetImage("assert/minus-sign.png"),
                                  color: Colors.white,
                                  height:
                                      ScreenSize.horizontalBlockSize! * 4.5),
                            )),
                        Container(
                          width: ScreenSize.horizontalBlockSize! * 10,
                          child: Center(
                              child: controllerTextlibra.getPiker('$Count',
                                  0xff000000, FontWeight.w500, 4.1)),
                        ),
                        controllerCash.getText(
                            ontap1,
                            ScreenSize.horizontalBlockSize! * 8,
                            ScreenSize.horizontalBlockSize! * 8,
                            100,
                            const Center(
                              child: Icon(Icons.add, color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    width: ScreenSize.fSize_90(),
                    height: ScreenSize.fSize_40(),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Color(0xFFCEEBEE)),
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: Center(
                      child: controllerTextlibra.getPiker(
                          '$Result', 0xff000000, FontWeight.w600, 4.5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenSize.fSize_20()),
            ],
          )),
    );
  }
}

class CashCountcontroller extends GetxController {
  getText(ontap, width, height, radius, child) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: const Color(0xFF089BAB),
            borderRadius: BorderRadius.all(
                Radius.circular(ScreenSize.horizontalBlockSize! * radius))),
        child: child,
      ),
    );
  }
}

class Detailstextcontroller extends GetxController {
  getText(text, text1) {
    return Row(
      children: [
        SizedBox(width: ScreenSize.fSize_17()),
        Container(
          width: ScreenSize.horizontalBlockSize! * 46,
          child: Text(
            text,
            style: GoogleFonts.prozaLibre(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
                fontSize: ScreenSize.horizontalBlockSize! * 3.2),
          ),
        ),
        Container(
          width: ScreenSize.horizontalBlockSize! * 40,
          child: Text(
            text1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.prozaLibre(
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
                fontSize: ScreenSize.horizontalBlockSize! * 3.8),
          ),
        ),
      ],
    );
  }
}

class indicatorcontroller extends GetxController {
  getText() {
    return Container(
      width: ScreenSize.horizontalBlockSize! * 6,
      height: ScreenSize.horizontalBlockSize! * 1.8,
      decoration: ShapeDecoration(
        color: const Color(0xFF089BAB),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}

class indicatorwhitecontroller extends GetxController {
  getText() {
    return Container(
      width: ScreenSize.horizontalBlockSize! * 2.2,
      height: ScreenSize.horizontalBlockSize! * 2.2,
      decoration: const ShapeDecoration(
        color: Color(0xFFCEEBEE),
        shape: OvalBorder(),
      ),
    );
  }
}

class CrradirScore extends GetxController {
  getPiker(ontap, text, change) {
    return GestureDetector(
      onTap: ontap,
      child: controllerContainer.getPiker(
        double.infinity,
        100,
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  SizedBox(width: ScreenSize.fSize_6()),
                  controllerradio.getPiker(
                      ontap,
                      change ? const Color(0xFF089BAB) : Colors.transparent,
                      ScreenSize.horizontalBlockSize! * 44,
                      text,
                      ScreenSize.horizontalBlockSize! * 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CaculateButton extends GetxController {
  getPiker(ontap, Ccolor, Bcolor, Scolor, Tcolor, text) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 40,
        height: ScreenSize.horizontalBlockSize! * 13,
        decoration: ShapeDecoration(
          color: Ccolor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Bcolor),
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: Scolor,
              blurRadius: 0,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child:
              controllerTextlibra.getPiker(text, Tcolor, FontWeight.w600, 4.8),
        ),
      ),
    );
  }
}

class GstButton extends GetxController {
  getPiker(ontap, color, text, Boxcolor, colortext) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          width: ScreenSize.horizontalBlockSize! * 38,
          height: ScreenSize.horizontalBlockSize! * 12,
          decoration: ShapeDecoration(
            color: const Color(0xFFF6FFFF),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: color),
              borderRadius: BorderRadius.circular(25.50),
            ),
            shadows: [
              BoxShadow(
                color: Boxcolor,
                blurRadius: 0,
                offset: const Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: controllerTextlibra.getPiker(
                text, colortext, FontWeight.w400, 4),
          )),
    );
  }
}

class RadioButoon extends GetxController {
  getPiker(ontap, color, width, text, SIZE) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: ontap,
          child: Stack(
            children: [
              Container(
                width: ScreenSize.fSize_28(),
                height: ScreenSize.fSize_28(),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 1, color: Color(0xFF089BAB)),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: ScreenSize.fSize_15(),
                    height: ScreenSize.fSize_15(),
                    decoration: ShapeDecoration(
                      color: color,
                      shape: const OvalBorder(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: SIZE),
        Container(
          // color: Colors.black12,
          width: width,
          child: controllerTextlibra.getPiker(
              text, 0xff000000, FontWeight.w600, 4.2),
        )
      ],
    );
  }
}

class NextButton extends GetxController {
  getPiker(ontap, top, text) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(
            top: ScreenSize.horizontalBlockSize! * top,
            left: ScreenSize.horizontalBlockSize! * 65),
        child: Container(
          width: ScreenSize.horizontalBlockSize! * 35,
          height: ScreenSize.horizontalBlockSize! * 14,
          decoration: const ShapeDecoration(
            color: Color(0xFFF6FFFF),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFF089BAB)),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                bottomLeft: Radius.circular(36),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0xFF089BAB),
                blurRadius: 0,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: controllerTextlibra.getPiker(
                text, 0xff000000, FontWeight.w500, 4.7),
          ),
        ),
      ),
    );
  }
}

class detailsContainer extends GetxController {
  getPiker(text) {
    return controllerContainer.getPiker(
        double.infinity,
        5,
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(width: ScreenSize.fSize_3()),
              // Image(
              //   image: AssetImage('assert/Layer_1.png'),
              //   height: ScreenSize.fSize_30(),
              // ),
              SizedBox(width: ScreenSize.fSize_6()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: ScreenSize.horizontalBlockSize! * 80,
                  child: controllerTextlibra.getPiker(
                      text, 0xff000000, FontWeight.w400, 3.5),
                ),
              )
            ],
          ),
        ));
  }
}

class ListContainer extends GetxController {
  getPiker(ontap, image, text) {
    return GestureDetector(
        onTap: ontap,
        child: controllerContainer.getPiker(
            double.infinity,
            100,
            Padding(
              padding: const EdgeInsets.all(6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: ScreenSize.horizontalBlockSize! * 55,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        controllercircle.getPiker(14, image, 7),
                        Column(
                          children: [
                            Container(
                              width: ScreenSize.horizontalBlockSize! * 35,
                              child: controllerTextlibra.getPiker(
                                  text, 0xff000000, FontWeight.w600, 4),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: ScreenSize.horizontalBlockSize! * 3),
                    child: controllerImage.getPiker(
                        "assert/Icon/Arrow - Right.png", 5),
                  )
                ],
              ),
            )));
  }
}

class Appbar extends GetxController {
  getPiker(ontap, text) {
    return AppBar(
      title: Text(text),
      titleTextStyle: GoogleFonts.prozaLibre(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: ScreenSize.fSize_18()),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: ontap,
        child: Center(
            child: controllerImage.getPiker('assert/Icon/Arrow - Left.png', 8)),
      ),
    );
  }
}

class ApplyButton extends GetxController {
  getPiker(width, height, radius, text) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: const Color(0xFFF6FFFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF089BAB)),
          borderRadius:
              BorderRadius.circular(ScreenSize.horizontalBlockSize! * radius),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0xFF089BAB),
            blurRadius: 0,
            offset: Offset(0, 1.60),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
          child: controllerTextlibra.getPiker(
              text, 0xFF089BAB, FontWeight.w600, 3.5)),
    );
  }
}

class RichText extends GetxController {
  getPiker(text, text1) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: text,
            style: GoogleFonts.prozaLibre(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: ScreenSize.horizontalBlockSize! * 3),
          ),
          TextSpan(
              text: text1,
              style: GoogleFonts.prozaLibre(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: ScreenSize.horizontalBlockSize! * 3.3)),
        ],
      ),
    );
  }
}

class HomeContainerCircle extends GetxController {
  getPiker(ontap, image, text, text1) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.only(
            right: ScreenSize.fSize_12(), left: ScreenSize.fSize_12()),
        child: controllerContainer.getPiker(
            double.infinity,
            4.5,
            Column(
              children: [
                SizedBox(height: ScreenSize.fSize_10()),
                Row(
                  children: [
                    SizedBox(width: ScreenSize.fSize_18()),
                    controllercircle.getPiker(14.5, image, 7),
                    SizedBox(width: ScreenSize.fSize_20()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controllerTextlibra.getPiker(
                            text, 0xff000000, FontWeight.w600, 4.5),
                        SizedBox(height: ScreenSize.fSize_8()),
                        controllerTextlibra.getPiker(
                            text1, 0xFF93969F, FontWeight.w400, 3.2),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: ScreenSize.fSize_10()),
              ],
            )),
      ),
    );
  }
}

class HomeContainer1Circle extends GetxController {
  getPiker(ontap, image, text, text1) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: ScreenSize.horizontalBlockSize! * 44.5,
        height: ScreenSize.horizontalBlockSize! * 44.5,
        decoration: ShapeDecoration(
          color: const Color(0xFFF6FFFF),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xFF089BAB),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ScreenSize.fSize_10()),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                controllercircle.getPiker(15, image, 7.5),
                SizedBox(width: ScreenSize.fSize_10()),
              ],
            ),
            SizedBox(height: ScreenSize.fSize_25()),
            Padding(
              padding: EdgeInsets.only(left: ScreenSize.fSize_10()),
              child: Column(
                children: [
                  controllerTextlibra.getPiker(
                      text, 0xff000000, FontWeight.w600, 5.5),
                  SizedBox(height: ScreenSize.horizontalBlockSize! * 2),
                  controllerTextlibra.getPiker(
                      text1, 0xFF93969F, FontWeight.w400, 3.4),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerCircle extends GetxController {
  getPiker(width, image, width1) {
    return Stack(
      alignment: Alignment.center,
      children: [
        controllerImage.getPiker("assert/Group 68.png", width),
        controllerImage.getPiker(image, width1),
      ],
    );
  }
}

class ContainerShare extends GetxController {
  getPiker(ontap, text, image) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: ScreenSize.horizontalBlockSize! * 13.5,
            height: ScreenSize.horizontalBlockSize! * 13.5,
            decoration: const ShapeDecoration(
              color: Color(0xFFF6FFFF),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFF089BAB)),
              ),
            ),
            child: Center(
              child: controllerImage.getPiker(image, 7),
            ),
          ),
          SizedBox(height: ScreenSize.fSize_10()),
          controllerTextlibra.getPiker(text, 0xff000000, FontWeight.w400, 3.5)
        ],
      ),
    );
  }
}

class ContainerController extends GetxController {
  getPiker(width, radius, child) {
    return Container(
      width: width,
      decoration: ShapeDecoration(
        color: const Color(0xFFF6FFFF).withOpacity(0.3),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF089BAB)),
          borderRadius:
              BorderRadius.circular(ScreenSize.horizontalBlockSize! * radius),
        ),
      ),
      child: child,
    );
  }
}

class TEXTlibraController extends GetxController {
  getPiker(text, color, fontWeight, fontSize) {
    return Text(
      text,
      style: GoogleFonts.prozaLibre(
          color: Color(color),
          fontWeight: fontWeight,
          fontSize: ScreenSize.horizontalBlockSize! * fontSize),
    );
  }
}

class DiscripController extends GetxController {
  getPiker(ContainerWidth, text, color, fontWeight, fontSize) {
    return Container(
      width: ScreenSize.horizontalBlockSize! * ContainerWidth,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.prozaLibre(
            color: Color(color),
            fontWeight: fontWeight,
            fontSize: ScreenSize.horizontalBlockSize! * fontSize),
      ),
    );
  }
}

class imageController extends GetxController {
  getPiker(image, width) {
    return Image(
        image: AssetImage(image),
        width: ScreenSize.horizontalBlockSize! * width,
        fit: BoxFit.cover);
  }
}

class TextFiledcontroller extends GetxController {
  gettextfiled(widght, controller, text, KYPE) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenSize.fSize_13(), right: ScreenSize.fSize_13()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: ScreenSize.horizontalBlockSize! * 100,
                height: ScreenSize.horizontalBlockSize! * 15,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF089BAB)),
                    borderRadius: BorderRadius.circular(31),
                  ),
                ),
                child: Center(
                  child: TextField(
                    controller: controller,
                    keyboardType: KYPE,
                    cursorColor: const Color(0xFF152C70),
                    decoration: InputDecoration(
                      hintText: text,
                      hintStyle: GoogleFonts.prozaLibre(
                          color: const Color(0xFF93969F),
                          fontSize: ScreenSize.fSize_14(),
                          fontWeight: FontWeight.w300),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: ScreenSize.horizontalBlockSize! * 6,
                          vertical: ScreenSize.fSize_12()),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class filedcontroller extends GetxController {
  gettextfiled(widght, controller, text, KYPE) {
    return Padding(
      padding: EdgeInsets.only(
          left: ScreenSize.fSize_13(), right: ScreenSize.fSize_13()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: ScreenSize.horizontalBlockSize! * 100,
                height: ScreenSize.horizontalBlockSize! * 15,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFCEEBEE)),
                    borderRadius: BorderRadius.circular(31),
                  ),
                ),
                child: Center(
                  child: TextField(
                    controller: controller,
                    keyboardType: KYPE,
                    cursorColor: const Color(0xFF152C70),
                    decoration: InputDecoration(
                      hintText: text,
                      hintStyle: GoogleFonts.prozaLibre(
                          color: const Color(0xFF93969F),
                          fontSize: ScreenSize.fSize_13(),
                          fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsetsDirectional.symmetric(
                          horizontal: ScreenSize.horizontalBlockSize! * 8,
                          vertical: ScreenSize.fSize_12()),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class textcontroller extends GetxController {
  getText(text, size, wight) {
    return Text(
      text,
      style: GoogleFonts.k2d(
          color: Colors.black, fontSize: size, fontWeight: wight),
    );
  }
}

class calculatorcontaincontroller extends GetxController {
  getText(child) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xFF13316D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: child,
      ),
    );
  }
}

class caltextcontroller extends GetxController {
  getText(text, text1) {
    return Row(
      children: [
        Container(
          width: ScreenSize.horizontalBlockSize! * 50,
          child: controllerTextlibra.getPiker(
              text, 0xFF089BAB, FontWeight.w500, 3.5),
        ),
        SizedBox(width: ScreenSize.horizontalBlockSize! * 10),
        Center(
          child: controllerTextlibra.getPiker(
              text1, 0xFF000000, FontWeight.w500, 4),
        )
      ],
    );
  }
}

class textwhitecontroller extends GetxController {
  getText(text, size, wight) {
    return Text(
      text,
      style: GoogleFonts.k2d(
          color: Colors.white, fontSize: size, fontWeight: wight),
    );
  }
}

class dividercontroller extends GetxController {
  getText() {
    return Divider(
      color: const Color(0xFFCEEBEE),
      indent: ScreenSize.fSize_28(),
      endIndent: ScreenSize.fSize_28(),
      thickness: ScreenSize.horizontalBlockSize! * 0.4,
    );
  }
}
