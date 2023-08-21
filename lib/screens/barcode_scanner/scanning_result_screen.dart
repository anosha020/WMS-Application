import 'dart:convert';

import 'package:erp_app_prac/models/barcode_result_model.dart';
import 'package:erp_app_prac/utils/color.dart';
// import 'package:erp_app_prac/service/apis.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../global.dart';

Future<BarcodeResultModel?> barcodeResultApi(
    String putToken, int barcodeData) async {
  try {
    final url =
        Uri.parse("https://202.163.101.236:4443/api/v1/models/m_transaction?");

    final uri = Uri.https(
      url.authority,
      url.path,
      {'\$filter': "M_AttributeSetInstance_ID eq $barcodeData"},
    );
    // Set up the headers with the bearer token
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    // print('this is barcode screen data $getjsonData');
    if (getResponse.statusCode == 200) {
      print("===============$getResponse");
      return BarcodeResultModel.fromJson(json.decode(getResponse.body));
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

class ScanResultScreen extends StatefulWidget {
  final int barcodeNumber;
  const ScanResultScreen({super.key, required this.barcodeNumber});

  @override
  State<ScanResultScreen> createState() => _ScanResultScreenState();
}

class _ScanResultScreenState extends State<ScanResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<BarcodeResultModel?>(
          future: barcodeResultApi(token, widget.barcodeNumber),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final records = snapshot.data!.records ?? [];
              return SingleChildScrollView(
                child: DataTable(
                  decoration: BoxDecoration(color: iconColor),
                  border: TableBorder.all(width: 1),
                  columnSpacing: 12,
                  columns: const [
                    DataColumn(
                        label: Text(
                      'MovementDate',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
                    DataColumn(
                        label: Text(
                      'MovementQty',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
                    DataColumn(
                        label: Text(
                      'MovementType',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
                    DataColumn(
                        label: Text(
                      'Locator ID',
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )),
                  ],
                  rows: records.map((record) {
                    final movementType = record.movementType;
                    return DataRow(
                      cells: [
                        DataCell(Text(
                          record.movementDate.toString(),
                          style: TextStyle(fontSize: 11),
                        )),
                        DataCell(Text(
                          record.movementQty.toString(),
                          style: TextStyle(fontSize: 11),
                        )),
                        DataCell(Text(
                          movementType?.identifier ?? 'N/A',
                          style: TextStyle(fontSize: 11),
                        )),
                        DataCell(Text(
                          record.mLocatorID?.identifier ?? 'N/A',
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
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
