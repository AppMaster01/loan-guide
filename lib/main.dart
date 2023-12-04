// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member, avoid_print

import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'Ad Controller/My_Controller.dart';
import 'Screen/Bank Holiday/Bank Holiday Details.dart';
import 'Screen/Bank Holiday/Bank Holiday.dart';
import 'Screen/Bank Info/Bank _Info.dart';
import 'Screen/Bank Info/BankContact.dart';
import 'Screen/Calculator/Calculator Page.dart';
import 'Screen/Calculator/EMI Calculator.dart';
import 'Screen/Calculator/GST Calculator.dart';
import 'Screen/Calculator/SIP Calculator.dart';
import 'Screen/Cash Counter/Cash_Counter.dart';
import 'Screen/Epf Service/EPF Service Discription.dart';
import 'Screen/Epf Service/Epf_Service.dart';
import 'Screen/Get_Started.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/Loan Guide/Loan Guide Descrip.dart';
import 'Screen/Loan Guide/Loan_Guide.dart';
import 'Screen/Loan Type/Credit Score/Credit Score 1.dart';
import 'Screen/Loan Type/Credit Score/Credit Score.dart';
import 'Screen/Loan Type/Credit Score/Fill_Up_Screen/Form_1.dart';
import 'Screen/Loan Type/Credit Score/Fill_Up_Screen/Form_2.dart';
import 'Screen/Loan Type/Credit Score/Fill_Up_Screen/Form_3.dart';
import 'Screen/Loan Type/Credit Score/Get Link For Bank.dart';
import 'Screen/Loan Type/Credit Score/Loan Overview.dart';
import 'Screen/Loan Type/Credit Score/Loan Term.dart';
import 'Screen/Loan Type/Credit Score/Profession.dart';
import 'Screen/Loan Type/Credit Score/Select Bank.dart';
import 'Screen/Loan Type/Credit Score/Select Loan Amount.dart';
import 'Screen/Loan Type/Loan Type.dart';
import 'Screen/Loan Type/Loan_Type_Details.dart';
import 'Screen/Loan/EPF_Details_page/Details_Model/Claim/Claim_Show_Details.dart';
import 'Screen/Loan/EPF_Details_page/Details_Model/Details.dart';
import 'Screen/Loan/EPF_Details_page/Show_Detail.dart';
import 'Screen/Loan/Loan_Apply_Now.dart';
import 'Screen/Loan/Loan_page.dart';
import 'Screen/Main_Page.dart';
import 'Screen/Splash Screen.dart';
import 'inapp_web_view/in_app.dart';

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap CashLoan = {}.obs;

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

loadAd() {
  AppOpenAd.load(
    adUnitId: CashLoan.value["APPOPEN"],
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        print("Ad Loadede.................................");
        appOpenAd = ad;
        ad.show();
      },
      onAdFailedToLoad: (error) {
        AppOpenAd.load(
          adUnitId: CashLoan.value["APPOPEN"],
          orientation: AppOpenAd.orientationPortrait,
          request: const AdManagerAdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              print("Ad Loadede.................................");
              appOpenAd = ad;
              // isLoaded=true;
              ad.show();
            },
            onAdFailedToLoad: (error) {},
          ),
        );
      },
    ),
  );
}

AndroidNotificationChannel channel = const AndroidNotificationChannel(
    "Hello ", "Rohan",
    playSound: true, importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  tz.initializeTimeZones();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  initConfig().whenComplete(() {
    CashLoan.value = json.decode(remoteConfig.getString('LoanGuide'));
    loadAd();
  });

  return runApp(
    GetMaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Main_Screen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/Splash_Screen': (context) => const Splash_Screen(),
        '/GetStarted': (context) => const GetStarted(),
        '/In_App_Privacy': (context) => const In_App_Privacy(),
        '/Loan_page': (context) => const Loan_page(),
        '/Details_Page': (context) => const Details_Page(),
        '/Loan_Apply_Now': (context) => const Loan_Apply_Now(),
        '/Loan_Details': (context) => const Loan_Details(),
        '/Discrip': (context) => const Discrip(),
        '/Loan_Guide': (context) => const Loan_Guide(),
        '/LoanDescription': (context) => const LoanDescription(),
        '/Bank_Info': (context) => const Bank_Info(),
        '/BankContact': (context) => const BankContact(),
        '/Epf_Service': (context) => const Epf_Service(),
        '/EPF_Service_Discription': (context) =>
            const EPF_Service_Discription(),
        '/Bank_Holiday': (context) => const Bank_Holiday(),
        '/Credit_Score': (context) => const Credit_Score(),
        '/Profession': (context) => const Profession(),
        '/Calculator': (context) => const Calculator(),
        '/Credit_Score_1': (context) => const Credit_Score_1(),
        '/Select_Loan_Amount': (context) => const Select_Loan_Amount(),
        '/Loan_Term': (context) => const Loan_Term(),
        '/Select_Bank': (context) => const Select_Bank(),
        '/Form_1': (context) => const Form_1(),
        '/Form_2': (context) => const Form_2(),
        '/Form_3': (context) => const Form_3(),
        '/Loan_Overview': (context) => const Loan_Overview(),
        '/Get_Link_For_Bank': (context) => const Get_Link_For_Bank(),
        '/SIP_Calculator': (context) => const SIP_Calculator(),
        '/EMI_Calculator': (context) => const EMI_Calculator(),
        '/GST_Calculator': (context) => const GST_Calculator(),
        '/Bank_Holiday_Details': (context) => const Bank_Holiday_Details(),
        '/Claim_Details': (context) => const Claim_Details(),
        '/Show_Details': (context) => const Show_Details(),
        '/Cash_Counter': (context) => const Cash_Counter(),
      },
      // home: FirstPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
