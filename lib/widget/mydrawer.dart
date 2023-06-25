// ignore_for_file: use_build_context_synchronously

// import 'package:erp_app_prac/screens/loginScreen.dart';
import 'package:erp_app_prac/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('Drawer Header'),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            title: const Text(
              'Logout',
            ),
            onTap: () async {
              var sp = await SharedPreferences.getInstance();
              sp.setBool(SplashScreenState.KEYLOGIN, false);
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/',
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
