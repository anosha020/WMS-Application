import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Reports/customLedger.dart';
import 'package:erp_app_prac/screens/Reports/generalLedger.dart';
import 'package:erp_app_prac/screens/Reports/goodsMovemDetails.dart';
import 'package:erp_app_prac/screens/Reports/goodsReceDetails.dart';
import 'package:erp_app_prac/screens/Reports/purchInvoiceDetail.dart';
import 'package:erp_app_prac/screens/Reports/salesInvoiceDetail.dart';
import 'package:erp_app_prac/screens/Reports/stockReport.dart';
import 'package:flutter/material.dart';
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const customLedger()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "General Ledger",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const generalLedger()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Stock Report",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const stockReport()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Sales Invoice Detail",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const salesInvoDetail()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Purchase Invoice Detail",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const purchInvoiceDetail()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Goods Receiving Details",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const goodsReceDetails()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Goods Movement Details",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const goodsMovDetails()),
              );
            },
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
