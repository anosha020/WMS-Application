import 'dart:convert';

import 'package:erp_app_prac/global.dart';
import 'package:erp_app_prac/models/current_stock_model.dart';
import 'package:erp_app_prac/utils/color.dart';
import 'package:erp_app_prac/widget/myappbar.dart';
import 'package:erp_app_prac/widget/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<CurrentStockModel?> currentStockApi(String putToken) async {
  try {
    final url = Uri.parse(
        "https://202.163.101.236:4443/api/v1/models/m_storageonhand?");

    final uri = Uri.https(
      url.authority,
      url.path,
      {'\$filter': "QtyOnHand gt 0"},
    );
    // Set up the headers with the bearer token
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    // print('this is barcode screen data $getjsonData');
    if (getResponse.statusCode == 200) {
      var body = getResponse.body;
      print("===============$body");
      return CurrentStockModel.fromJson(json.decode(getResponse.body));
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

class CurrentStockScreen extends StatefulWidget {
  const CurrentStockScreen({super.key});

  @override
  State<CurrentStockScreen> createState() => _CurrentStockScreenState();
}

class _CurrentStockScreenState extends State<CurrentStockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: SafeArea(
        child: FutureBuilder<CurrentStockModel?>(
          future: currentStockApi(token),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final records = snapshot.data!.records ?? [];
              return SingleChildScrollView(
                child: DataTable(
                  dataRowHeight: 90,
                  horizontalMargin: 2,
                  decoration: BoxDecoration(color: iconColor),
                  border: TableBorder.all(width: 1),
                  columnSpacing: 1,
                  columns: const [
                    DataColumn(
                        label: Text(
                      'Product',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )),
                    DataColumn(
                        label: Text(
                      'Locator',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )),
                    DataColumn(
                        numeric: false,
                        label: Text(
                          'Quantity',
                          style: TextStyle(fontSize: 13, color: Colors.white),
                        )),
                  ],
                  rows: records.map((record) {
                    // final movementType = record.movementType;
                    return DataRow(
                      cells: [
                        DataCell(Text(
                          record.mProductID?.identifier ?? 'N/A',
                          style: TextStyle(fontSize: 11),
                        )),
                        DataCell(Text(
                          record.mLocatorID?.identifier ?? 'N/A',
                          style: TextStyle(fontSize: 11),
                        )),
                        DataCell(Text(
                          record.qtyOnHand.toString(),
                          style: TextStyle(fontSize: 11),
                        )),
                      ],
                    );
                  }).toList(),
                  showBottomBorder: true,
                ),
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            // By default show a loading spinner.
            return Center(child: const CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
