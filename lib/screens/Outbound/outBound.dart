import 'package:erp_app_prac/screens/Notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/headers.dart';
import '../../widget/myappbar.dart';
import '../../widget/mybottomNavigator.dart';
import '../../widget/mydrawer.dart';
import '../../widget/options.dart';
import '../Reports/reports.dart';
import '../homeScreen.dart';

class outBoundScreen extends StatefulWidget {
  const outBoundScreen({super.key});

  @override
  State<outBoundScreen> createState() => _outBoundScreenState();
}

class _outBoundScreenState extends State<outBoundScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 2;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(children: [
          const header(
            text: "Outbound",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          MyOptions(
            text: "Out-Pick",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Out-Picking",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Out-Consolidate Picking Create",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Out-Consolidate Picking",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Pick to Container",
            onPressed: () {},
          ),
        ]),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            _onItemTapped(index);
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
                break;
              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const reportScreen()),
                );
                break;
            }
          }),
    );
  }
}
