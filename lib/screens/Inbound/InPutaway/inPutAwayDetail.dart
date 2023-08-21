import 'package:erp_app_prac/global.dart';
import 'package:erp_app_prac/models/input_away_detail_model.dart';
import 'package:erp_app_prac/models/inventory_pick_detail_model.dart';
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
import 'package:get/get.dart';

class InPutAwayDetailScreen extends StatefulWidget {
  final int itemId;
  const InPutAwayDetailScreen({super.key, required this.itemId});

  @override
  State<InPutAwayDetailScreen> createState() => _InPutAwayDetailScreenState();
}

class _InPutAwayDetailScreenState extends State<InPutAwayDetailScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    getinputawayDetail(token, widget.itemId);
    super.initState();
    print("---------------${widget.itemId}-------------");
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
            child: FutureBuilder<InPutAwayDetailModel?>(
              future: getinputawayDetail(token, widget.itemId),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.records!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Product id",
                                    style: TextStyle(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    snapshot.data!.records![index].id
                                        .toString(),
                                    // snapshot.data!.records![index].id
                                    //     .toString(),
                                    style: const TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Client",
                                    style: TextStyle(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    snapshot.data!.records![index].aDClientID
                                            ?.identifier ??
                                        'N/A'.toString(),
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Created By",
                                    style: TextStyle(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    snapshot.data!.records![index].createdBy
                                            ?.identifier ??
                                        'N/A'.toString(),
                                    style: TextStyle(
                                        color: iconColor,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Movement Date ",
                                    style: TextStyle(
                                        color: Get.isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 10, left: 10),
                                    child: Text(
                                      snapshot.data!.records![index].movementQty
                                          .toString(),
                                      style: TextStyle(
                                          color: iconColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     Text(
                              //       "Batch No",
                              //       style: TextStyle(
                              //           color: Get.isDarkMode
                              //               ? Colors.white
                              //               : Colors.black,
                              //           fontWeight: FontWeight.w500),
                              //     ),
                              //     const Text(
                              //       "1000",
                              //       style: TextStyle(
                              //           color: iconColor,
                              //           fontWeight: FontWeight.w500),
                              //     )
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     Text(
                              //       "Manufacturing Date",
                              //       style: TextStyle(
                              //           color: Get.isDarkMode
                              //               ? Colors.white
                              //               : Colors.black,
                              //           fontWeight: FontWeight.w500),
                              //     ),
                              //     const Padding(
                              //       padding: EdgeInsets.only(right: 20),
                              //       child: Text(
                              //         "1000",
                              //         style: TextStyle(
                              //             color: iconColor,
                              //             fontWeight: FontWeight.w500),
                              //       ),
                              //     )
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     Text(
                              //       "Expire Date",
                              //       style: TextStyle(
                              //           color: Get.isDarkMode
                              //               ? Colors.white
                              //               : Colors.black,
                              //           fontWeight: FontWeight.w500),
                              //     ),
                              //     const Text(
                              //       "1000",
                              //       style: TextStyle(
                              //           color: iconColor,
                              //           fontWeight: FontWeight.w500),
                              //     )
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceAround,
                              //   children: [
                              //     Text(
                              //       "Pallet ID / LPN",
                              //       style: TextStyle(
                              //           color: Get.isDarkMode
                              //               ? Colors.white
                              //               : Colors.black,
                              //           fontWeight: FontWeight.w500),
                              //     ),
                              //     const Padding(
                              //       padding: EdgeInsets.only(right: 10),
                              //       child: Text(
                              //         "[|||||]",
                              //         style: TextStyle(
                              //           color: iconColor,
                              //           fontWeight: FontWeight.w600,
                              //         ),
                              //       ),
                              //     )
                              //   ],
                              // ),
                              // Padding(
                              //   padding:
                              //       const EdgeInsets.only(left: 50, top: 5),
                              //   child: Row(
                              //     children: [
                              //       Text(
                              //         "(Scanning Option)",
                              //         style: TextStyle(
                              //             color: Get.isDarkMode
                              //                 ? Colors.white
                              //                 : Colors.black,
                              //             fontWeight: FontWeight.w500),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 40, right: 10, left: 10),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  width:
                                      MediaQuery.of(context).size.width * 0.22,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          end: AlignmentDirectional.bottomStart,
                                          colors: [
                                            Color.fromARGB(255, 34, 179, 236),
                                            Color.fromARGB(255, 7, 102, 149)
                                          ]),
                                      borderRadius: BorderRadius.circular(4)),
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                          // ignore: deprecated_member_use
                                          primary: Colors.white),
                                      onPressed: () {},
                                      child: const Text(
                                        "Done",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      )),
                                ),
                              )
                            ]);
                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
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
