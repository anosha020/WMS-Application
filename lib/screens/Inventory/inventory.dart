import 'package:erp_app_prac/screens/Inventory/InvenAdjust/invenAjust.dart';
import 'package:erp_app_prac/screens/Inventory/InvenPick/invenPick.dart';
import 'package:erp_app_prac/screens/Inventory/InvenPut/invenPut.dart';
import 'package:erp_app_prac/screens/Inventory/InvenQuaran/invenQuaran.dart';
import 'package:erp_app_prac/screens/Inventory/current_stock_screen.dart';
import 'package:erp_app_prac/screens/Notification.dart';
import 'package:flutter/material.dart';
import '../../widget/headers.dart';
import '../../widget/myappbar.dart';
import '../../widget/mybottomNavigator.dart';
import '../../widget/mydrawer.dart';
import '../../widget/options.dart';
import '../Reports/reports.dart';
import '../homeScreen.dart';

class inventoryScreen extends StatefulWidget {
  const inventoryScreen({super.key});

  @override
  State<inventoryScreen> createState() => _inventoryScreenState();
}

class _inventoryScreenState extends State<inventoryScreen> {
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
            text: "INVENTORY",
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.07),
          MyOptions(
            text: "Inventory PICK",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InventoryPick()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Inventory PUT",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const invenPut()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Inventory Adjustment",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const invenAdjustment()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Inventory Quarantine",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const invenQuarantine()),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          MyOptions(
            text: "Current Stock",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CurrentStockScreen()),
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
