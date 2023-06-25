// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';
// import 'package:erp_app_prac/screens/home.dart';
import 'package:erp_app_prac/models/inventory_pick_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/Select_Role.dart';
import '../utils/alert.dart';
import 'package:erp_app_prac/global.dart';

Future loginapi(context, serveraddress, username, password) async {
  // var token;
  print("presed -------------------");
  try {
    var url = Uri.parse(serveraddress);
    // var url = Uri.parse("https://reqres.in/api/login");

    Map data = {"userName": "$username", "password": "$password"};
    var response = await http.post(
      url,
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: jsonEncode(data),
    );
    print("-----------------");
    var jsonData = await jsonDecode(response.body);
    print("Status code: ${response.statusCode}");
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const SelectRole()));
      print("working fine");
      // print(response.body);
      token = jsonData["token"];
      print("token: $token");
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

  Map body = {
    'clientId': '1000000',
    'roleId': '1000007',
    'organizationId': '1000000',
    'warehouseId': '1000000',
    'language': 'en_US',
  };
  try {
    var putUrl = Uri.parse("https://202.163.101.238:4443/api/v1/auth/tokens");
    print("hitting put url");
    var putResponse = await http.put(
      putUrl,
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        'Authorization': 'Bearer $postToken'
      },
      body: jsonEncode(body),
    );
    var putjsonData = await jsonDecode(putResponse.body);
    print("Status code of Put api: ${putResponse.statusCode}");
    if (putResponse.statusCode == 200) {
      print("Working fine put api");
      token = putjsonData["token"];
      print("---------------------");
      print("THIS IS PUT TOKE $token");
      getInventoryPick(token);
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
  Map body = {"filter": "Doc", "Status": "DR", "M_Warehouse_ID": 1000000};
  try {
    var getUrl =
        Uri.parse("https://202.163.101.238:4443/api/v1/models/m_movement");
    print("hitting get url");
    var getResponse = await http.get(
      getUrl,
      headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        'Authorization': 'Bearer $putToken'
      },
      // body: jsonEncode(body),
    );
    var getjsonData = jsonDecode(getResponse.body);
    print("Status code of Gett api: ${getResponse.statusCode}");
    if (getResponse.statusCode == 200) {
      InventoryPickModel inventoryPick =
          InventoryPickModel.fromJson(getjsonData);

      // print("Working fine put api");
      // getToken = getjsonData["page-count"];
      // print("---------------------");
      // print("----------THIS IS GET TOKE $getToken----------");
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
