import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/utils/color.dart';
import 'package:erp_app_prac/widget/headers.dart';
import 'package:erp_app_prac/widget/myappbar.dart';
import 'package:erp_app_prac/widget/mybottomNavigator.dart';
import 'package:erp_app_prac/widget/mydrawer.dart';
import 'package:flutter/material.dart';
class inRCRScreen extends StatefulWidget {
  const inRCRScreen({super.key});

  @override
  State<inRCRScreen> createState() => _inRCRScreenState();
}

class _inRCRScreenState extends State<inRCRScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const header2(
            text: "INBOUND",
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20, left: 10),
                        child: Row(
                          children: const [
                            Text(
                              "Business Partner",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Mushahid Hussain",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: iconColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Row(
                          children: const [
                            Text(
                              "Document No",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 78,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "ER-1000",
                                style:
                                    TextStyle(fontSize: 14, color: iconColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 10, bottom: 20, top: 5),
                        child: Row(
                          children: const [
                            Text(
                              "Assigned Person",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              width: 59,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Mushahid",
                                style:
                                    TextStyle(fontSize: 14, color: iconColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            _onItemTapped(index);
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
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