import 'package:erp_app_prac/global.dart';
import 'package:erp_app_prac/models/in_putaway_model.dart';
import 'package:erp_app_prac/screens/Inbound/InPutaway/inPutAwayDetail.dart';
import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/service/apis.dart';
import 'package:erp_app_prac/utils/color.dart';
import 'package:erp_app_prac/widget/headers.dart';
import 'package:erp_app_prac/widget/myappbar.dart';
import 'package:erp_app_prac/widget/mybottomNavigator.dart';
import 'package:erp_app_prac/widget/mydrawer.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class inPutAwayScreen extends StatefulWidget {
  const inPutAwayScreen({super.key});

  @override
  State<inPutAwayScreen> createState() => _inPutAwayScreenState();
}

class _inPutAwayScreenState extends State<inPutAwayScreen> {
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
            child: FutureBuilder<InPutAwayModel?>(
                future: getInPutAway(token),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.records!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InPutAwayDetailScreen(
                                          itemId: snapshot
                                              .data!.records![index].id!,
                                        )));
                          },
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                            child: Column(
                              children: [
                                // Container(
                                //   padding: const EdgeInsets.only(top: 20, left: 10),
                                //   child: Row(
                                //     children: const [
                                //       Text(
                                //         "Business Partner",
                                //         style: TextStyle(
                                //             fontSize: 16, fontWeight: FontWeight.bold),
                                //       ),
                                //       SizedBox(
                                //         width: 40,
                                //       ),
                                //       Expanded(
                                //         flex: 2,
                                //         child: Text(
                                //           "Mushahid Hussain",
                                //           style: TextStyle(
                                //               fontSize: 16,
                                //               color: iconColor,
                                //               fontWeight: FontWeight.bold),
                                //         ),
                                //       )
                                //     ],
                                //   ),
                                // ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Document No",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 68,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          snapshot.data!.records![index]
                                              .documentNo!,
                                          style: const TextStyle(
                                              fontSize: 14, color: iconColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Assigned Person",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 58,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          snapshot.data!.records![index]
                                              .updatedBy!.identifier!,
                                          style: const TextStyle(
                                              fontSize: 14, color: iconColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 10, bottom: 20, top: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Shipment Date",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 71,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          snapshot.data!.records![index]
                                              .movementDate!,
                                          style: const TextStyle(
                                              fontSize: 14, color: iconColor),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
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
