// ignore_for_file: use_build_context_synchronously

import 'package:erp_app_prac/global.dart';
import 'package:erp_app_prac/screens/barcode_scanner/scanning_result_screen.dart';
import 'package:erp_app_prac/service/apis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeScannerScreen extends StatelessWidget {
  Future<void> scanBarcodeNormal(BuildContext context) async {
    // Perform barcode scanning logic here
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(
          "this is the resullt of bar code #############$barcodeScanRes#################");
      var barcodeNo = int.parse(barcodeScanRes);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ScanResultScreen(
                  barcodeNumber: barcodeNo,
                )),
      );
    } on PlatformException {
      barcodeScanRes = '--------------Failed to get platform version.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => scanBarcodeNormal(context),
          child: Text('Scan Barcode'),
        ),
      ),
    );
  }
}
