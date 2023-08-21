// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:erp_app_prac/screens/Inbound/inBound.dart';
import 'package:erp_app_prac/screens/Inventory/inventory.dart';
import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Outbound/outBound.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/barcode_scanner/scanning_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import '../widget/myappbar.dart';
import '../widget/mybottomNavigator.dart';
import '../widget/mydrawer.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  // final GlobalKey<ScaffoldState> _key = GlobalKey();
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
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            SvgPicture.asset(
              "assets/images/logo.svg",
              width: MediaQuery.of(context).size.width * 0.45,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Buttons(
                  icon: "assets/images/Putaway.svg",
                  text: 'Inbound',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const inBoundScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Buttons(
                  icon: "assets/images/Picking.svg",
                  text: 'Outbound',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const outBoundScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Buttons(
                  icon: "assets/images/Inventory Check.svg",
                  text: 'Inventory',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const inventoryScreen()),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Buttons(
                  icon: "assets/images/Inventory Movement.svg",
                  text: 'Warehouse',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            _onItemTapped(index);
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BarcodeScannerScreen()),
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
      // Container(
      //   decoration: const BoxDecoration(
      //     gradient:
      //         LinearGradient(end: AlignmentDirectional.bottomStart, colors: [
      //       Color.fromARGB(255, 31, 164, 216),
      //       Color.fromARGB(255, 7, 102, 149),
      //     ]),
      //   ),
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.transparent,
      //     type: BottomNavigationBarType.fixed,
      //     showSelectedLabels: false,
      //     showUnselectedLabels: false,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset("assets/images/Analytics.svg"),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset("assets/images/Approvals.svg"),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset("assets/images/Home.svg"),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset("assets/images/notification.svg"),
      //           label: "home"),
      //       BottomNavigationBarItem(
      //           icon: SvgPicture.asset(
      //             "assets/images/Inventory Check.svg",
      //             color: Colors.white,
      //           ),
      //           label: "home"),
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index) {
      //       _onItemTapped(index);
      //       switch (index) {
      //         case 0:
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => home()),
      //           );
      //           break;
      //         case 1:
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => home()),
      //           );
      //           break;
      //         case 2:
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => home()),
      //           );
      //           break;
      //         case 3:
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => home()),
      //           );
      //           break;
      //         case 4:
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => reportScreen()),
      //           );
      //           break;
      //       }
      //     },
      //   ),
      // ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onPressed})
      : super(key: key);
  final String text;
  final String icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.only(right: 50, left: 50),
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 7, 102, 149), width: 0.6),
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 218, 212, 212),
                blurRadius: 5.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // color: Colors.amberAccent,
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.height * 0.09,
                padding: const EdgeInsets.only(
                    right: 12, left: 12, top: 10, bottom: 10),
                child: SvgPicture.asset(
                  icon,
                  // width: MediaQuery.of(context).size.width * 0.08,
                  // height: MediaQuery.of(context).size.width * 0.08,
                  // color: Color.fromARGB(255, 34, 153, 212),
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
