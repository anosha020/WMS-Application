import 'dart:convert';
import 'dart:io';
// import 'package:erp_app_prac/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../screens/Select_Role.dart';
import '../utils/alert.dart';

Future loginapi(context, serveraddress, username, password) async {
  var token;
  try {
    var url = Uri.parse(serveraddress);
    // var url = Uri.parse("https://reqres.in/api/login");

    Map data = {"userName": "$username", "password": "$password"};
    var response = await http.post(
      url,
      headers: {HttpHeaders.contentTypeHeader: "application/json"},
      body: utf8.encode(json.encode(data)),
    );
    // print(response.body);
    print("-----------------");
    var jsonData = await jsonDecode(response.body);
    print("Status code: ${response.statusCode}");
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>const SelectRole()));
      print("working fine");
      // print(response.body);
      token = jsonData["token"];

      print("token: $token");
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
