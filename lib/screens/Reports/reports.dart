import 'package:erp_app_prac/screens/Notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/headers.dart';
import '../../widget/myappbar.dart';
import '../../widget/mybottomNavigator.dart';
import '../../widget/mydrawer.dart';
import '../../widget/options.dart';
import '../homeScreen.dart';

class reportScreen extends StatefulWidget {
  const reportScreen({super.key});

  @override
  State<reportScreen> createState() => _reportScreenState();
}

class _reportScreenState extends State<reportScreen> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Column(children: [
          const header(
            text: "REPORTS",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          MyOptions(
            text: "Customer Ledger",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "General Ledger",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Stock Report",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Sales Invoice Detail",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Purchase Invoice Detail",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Goods Receiving Details",
            onPressed: () {},
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Goods Movement Details",
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
