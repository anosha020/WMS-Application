import 'dart:io';
import 'dart:typed_data';
import 'package:erp_app_prac/screens/splashScreen.dart';
import 'package:erp_app_prac/screens/Inbound/inBound.dart';
import 'package:erp_app_prac/screens/Inbound/InReceving/inReceiving.dart';
import 'package:erp_app_prac/screens/Inventory/inventory.dart';
import 'package:erp_app_prac/screens/Outbound/outBound.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/screens/loginScreen.dart';
import 'package:erp_app_prac/screens/Select_Role.dart';
import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Reports/customLedger.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final bool isLoggedIn;

  // const MyApp({required this.isLoggedIn});
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          // '/login': (context) =>const Login(),
        });
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
