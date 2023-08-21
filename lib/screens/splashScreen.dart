import 'dart:async';
import 'package:erp_app_prac/screens/barcode_scanner/scanning_result_screen.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:erp_app_prac/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SvgPicture.asset(
          "assets/images/logo.svg",
          width: MediaQuery.of(context).size.width * 0.5,
        ),
      ),
    );
  }

  void whereToGo() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    var isLoggedIn = sp.getBool(KEYLOGIN);
    Timer(const Duration(seconds: 2), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => home()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Login()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login()));
      }
    });
  }
}
