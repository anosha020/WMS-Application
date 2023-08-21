// ignore_for_file: unused_local_variable
import 'dart:convert';
import 'dart:io';
import 'package:erp_app_prac/models/barcode_result_model.dart';
import 'package:erp_app_prac/models/in_putaway_model.dart';
import 'package:erp_app_prac/models/input_away_detail_model.dart';
import 'package:erp_app_prac/models/inventory_pick_detail_model.dart';
import 'package:erp_app_prac/models/inventory_pick_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/Select_Role.dart';
import '../utils/alert.dart';
import 'package:erp_app_prac/global.dart';

Future loginapi(context, serveraddress, username, password) async {
  // var token;
  // print("presed -------------------");
  try {
    var url = Uri.parse(serveraddress);
    Map data = {"userName": "$username", "password": "$password"};
    var response = await http.post(
      url,
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: jsonEncode(data),
    );
    var jsonData = await jsonDecode(response.body);
    print("Status code: ${response.statusCode}");
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SelectRole()));
      token = jsonData["token"];
      putApiCall(token);
    } else if (response.statusCode == 401) {
      print("error 401");
      ShowDialog(context, "Invalid username or password");
    } else {
      print("error");
    }
  } catch (e) {
    // SnackBar(
    //   content: Text(e.toString()),
    // );
    print(
      "this is error $e",
    );
  }
}

Future putApiCall(String postToken) async {
  // var putToken;
  // String key1 = "\$filter=DocStatus eq 'DR'";
  // String key2 = 'M_Warehouse_ID eq 1000000';

  Map body = {
    'clientId': '1000000',
    'roleId': '1000007',
    'organizationId': '1000000',
    'warehouseId': '1000000',
    'language': 'en_US',
  };
  try {
    var putUrl = Uri.parse("https://202.163.101.236:4443/api/v1/auth/tokens");
    var putResponse = await http.put(
      putUrl,
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        'Authorization': 'Bearer $postToken'
      },
      body: jsonEncode(body),
    );
    var putjsonData = await jsonDecode(putResponse.body);
    if (putResponse.statusCode == 200) {
      // print("Working fine put api");
      token = putjsonData["token"];
      print("---------------------$token-------------------");
      getInventoryPick(token);
      getInPutAway(token);
      print("working inven api");
      // getInventoryPickDetail(token);
    } else if (putResponse.statusCode == 401) {
      print("error 401");
    } else {
      print("error");
    }
  } catch (e) {
    print("-----------------------");
    print("this is the $e");
  }
}

Future<InventoryPickModel?>? getInventoryPick(String putToken) async {
  try {
    final url =
        Uri.parse("https://202.163.101.236:4443/api/v1/models/m_movement?");

    final uri = Uri.https(
      url.authority,
      url.path,
      {'\$filter': "DocStatus eq 'DR' and M_Warehouse_ID eq 1000000"},
    );

    // Set up the headers with the bearer token
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    var getjsonData = jsonDecode(getResponse.body);
    if (getResponse.statusCode == 200) {
      InventoryPickModel inventoryPick =
          InventoryPickModel.fromJson(getjsonData);
      return inventoryPick;
    } else if (getResponse.statusCode == 401) {
      return null;
      print("error 401");
    } else {
      return null;
      print("error");
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

Future<InPutAwayModel?>? getInPutAway(String putToken) async {
  Map body = {"filter": "Doc", "Status": "DR", "M_Warehouse_ID": 1000000};
  try {
    var getUrl =
        Uri.parse("https://202.163.101.236:4443/api/v1/models/m_inout?");
    final uri = Uri.https(
      getUrl.authority,
      getUrl.path,
      {'\$filter': "DocStatus eq 'DR' and M_Warehouse_ID eq 1000000"},
    );
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    var getjsonData = jsonDecode(getResponse.body);
    if (getResponse.statusCode == 200) {
      InPutAwayModel inputaway = InPutAwayModel.fromJson(getjsonData);
      return inputaway;
    } else if (getResponse.statusCode == 401) {
      return null;
      print("error 401");
    } else {
      return null;
      print("error");
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

Future<InventoryPickDetailModel?>? getInventoryPickDetail(
    String putToken, int itemId) async {
  try {
    final url =
        Uri.parse("https://202.163.101.236:4443/api/v1/models/m_movement?");

    final uri = Uri.https(
      url.authority,
      url.path,
      {'\$filter': "M_Movement_ID eq $itemId"},
    );
    // Set up the headers with the bearer token
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    var getjsonData = jsonDecode(getResponse.body);
    print('this is detial screen data $getjsonData');
    if (getResponse.statusCode == 200) {
      InventoryPickDetailModel inventoryPickDetail =
          InventoryPickDetailModel.fromJson(getjsonData);
      return inventoryPickDetail;
    } else if (getResponse.statusCode == 401) {
      return null;
      print("error 401");
    } else {
      return null;
      print("error");
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

Future<InPutAwayDetailModel?>? getinputawayDetail(
    String putToken, int itemId) async {
  try {
    final url =
        Uri.parse("https://202.163.101.236:4443/api/v1/models/m_movement?");

    final uri = Uri.https(
      url.authority,
      url.path,
      {'\$filter': "M_Movement_ID eq $itemId"},
    );
    // Set up the headers with the bearer token
    final headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
    final getResponse = await http.get(uri, headers: headers);
    var getjsonData = jsonDecode(getResponse.body);
    print('this is detial screen data $getjsonData');
    if (getResponse.statusCode == 200) {
      InPutAwayDetailModel inputawayDetail =
          InPutAwayDetailModel.fromJson(getjsonData);
      return inputawayDetail;
    } else if (getResponse.statusCode == 401) {
      return null;
      print("error 401");
    } else {
      return null;
      print("error");
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}

Future<BarcodeResultModel?>? barcodeResultApi(
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
      print("==============================================");
      print(jsonDecode(getResponse.body));
      // List getjsonData = jsonDecode(getResponse.body);
      // return getjsonData
      //     .map((data) => BarcodeResultModel.fromJson(data))
      //     .toList();
    } else if (getResponse.statusCode == 401) {
      return null;
      print("error 401");
    } else {
      return null;
      print("error");
    }
  } catch (e) {
    return null;
    print("-----------------------");
    print("this is the $e");
  }
}
