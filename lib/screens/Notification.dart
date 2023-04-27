import 'package:erp_app_prac/widget/headers.dart';
import 'package:erp_app_prac/widget/myappbar.dart';
import 'package:erp_app_prac/widget/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/mybottomNavigator.dart';
import 'Reports/reports.dart';
import 'homeScreen.dart';

class NotificationItem {
  final String message;
  final DateTime time;

  NotificationItem({required this.message, required this.time});
}

class NotificationPage extends StatefulWidget {
  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final List<NotificationItem> _notifications = [
    // NotificationItem(message: 'No New Notifications', time: DateTime.now()),
    NotificationItem(
        message: 'Your package has been delivered',
        time: DateTime.now().subtract(Duration(days: 1))),
    NotificationItem(
        message: 'Your account is about to expire',
        time: DateTime.now().subtract(Duration(days: 2))),
  ];
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.2;

    final todayNotifications = _notifications
        .where((item) => item.time.day == DateTime.now().day)
        .toList();

    final earlierNotifications = _notifications
        .where((item) => item.time.day != DateTime.now().day)
        .toList();

    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView(
          children: [
            header(text: "Notifications"),
            // Container(
            //   height: screenHeight * 0.075, // Set the height of the top bar
            //   color: Colors.white, // Set the background color of the top bar
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       IconButton(
            //         icon: SvgPicture.asset(
            //             'assets/images/Hamburger.svg'), // Add a profile icon button to the right
            //         onPressed: () {
            //           // Open the user profile page
            //         },
            //       ),
            //       IconButton(
            //         icon: SvgPicture.asset(
            //             'assets/images/SELECT ROLE.svg'), // Add a profile icon button to the right
            //         onPressed: () {
            //           // Open the user profile page
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            Card(
              elevation: 4,
              shadowColor: Colors.grey,
              margin: const EdgeInsets.all(05),
              color: const Color(0xFFF5F5F5),
              child: SizedBox(
                height: screenHeight * 0.12,
                child: Center(
                  child: Column(
                    children: [
                      const ListTile(
                        title: Text(
                          'Today',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      if (todayNotifications.isEmpty)
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              'No New Notifications',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ...todayNotifications.map(
                        (item) => ListTile(
                          title: Text(item.message),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
                elevation: 4, // adjust the elevation to your preference
                shadowColor: Colors.grey,
                margin: const EdgeInsets.all(05),
                color: const Color(0xFFF5F5F5), // Set the background color
                child: SizedBox(
                  height: screenHeight * 0.15,
                  child: Center(
                    child: Column(
                      children: [
                        const ListTile(
                          title: Text(
                            'Earlier',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xFF1879B7),
                              ),
                            ),
                            Expanded(
                                child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    earlierNotifications[0].message,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    '${earlierNotifications[0].time.day} ${_getMonthName(earlierNotifications[0].time.month)} ${earlierNotifications[0].time.year}',
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 14),
                                  ),
                                ],
                              ),
                            )),
                            IconButton(
                              icon: const Icon(Icons.close),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
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

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }
}
