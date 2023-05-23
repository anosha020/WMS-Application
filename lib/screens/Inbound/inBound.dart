import 'package:erp_app_prac/screens/Inbound/InPutaway/inPutAway.dart';
import 'package:erp_app_prac/screens/Inbound/InQuarantine/inQuaran.dart';
import 'package:erp_app_prac/screens/Inbound/InRCP/inRCP.dart';
import 'package:erp_app_prac/screens/Inbound/InRCR/inRCR.dart';
import 'package:erp_app_prac/screens/Inbound/InReceving/inReceiving.dart';
import 'package:erp_app_prac/screens/Inbound/InTransfer/inTranfer.dart';
import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/widget/headers.dart';
import 'package:erp_app_prac/widget/options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../widget/myappbar.dart';
import '../../widget/mybottomNavigator.dart';
import '../../widget/mydrawer.dart';
import '../Reports/reports.dart';
import '../homeScreen.dart';

class inBoundScreen extends StatefulWidget {
  const inBoundScreen({super.key});
  @override
  State<inBoundScreen> createState() => _inBoundScreenState();
}

class _inBoundScreenState extends State<inBoundScreen> {
  int _selectedIndex = 2;

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
            text: "Inbound",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          MyOptions(
            text: "In-Receiving",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const inReceivingScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "In-Putaway",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const inPutAwayScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "In-Transfer",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const inTransferScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "In-Quarantine",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const InQuarantineScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "In-RCR",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const inRCRScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "In-RCP",
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>const inRCPScreen()),
                );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
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
                  MaterialPageRoute(builder: (context) => reportScreen()),
                );
                break;
            }
          }),
    );
  }
}
