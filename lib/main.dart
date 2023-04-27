import 'dart:io';
import 'dart:typed_data';
import 'package:erp_app_prac/screens/Inbound/inBound.dart';
import 'package:erp_app_prac/screens/Inbound/inReceiving.dart';
import 'package:erp_app_prac/screens/Inventory/inventory.dart';
import 'package:erp_app_prac/screens/Outbound/outBound.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/screens/loginScreen.dart';
import 'package:erp_app_prac/screens/Select_Role.dart';
import 'package:erp_app_prac/screens/Notification.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  // ByteData data = await PlatformAssetBundle().load('assets/ca/lets-encrypt-r3.pem');
  // SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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
      home: const Login(),
    );
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
