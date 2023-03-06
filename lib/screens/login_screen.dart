import 'dart:convert';
import 'dart:io';
// import 'package:erp_app_prac/screens/config_screen.dart';
import 'package:erp_app_prac/screens/config_screen.dart';
import 'package:erp_app_prac/screens/home.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  setvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("username", username.text.toString());
    // print(username);
  }

  getvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    username.text = sp.getString("username") ?? "";
    print(username);
    return username;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getvalues();
  }

  Future loginapi(username, password) async {
    var token;
    try {
      var url = Uri.parse("https://hhs.erinsight.com:6343/api/v1/auth/tokens");
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
      print(response.statusCode);
      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const home()));
        print("working fine");
        // print(response.body);
        token = jsonData["token"];

        print("token: $token");
      } else if (response.statusCode == 401) {
        // print("its working");
        // ignore: use_build_context_synchronously
        _showDialog(context);
      } else {
        print("error");
      }
    } catch (e) {
      // SnackBar(
      //   content: Text(e.toString()),
      // );
      print(
        e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConfigScreen()));
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                  controller: username,
                  decoration: const InputDecoration(
                    hintText: "user name",
                  )),
              TextField(
                  controller: password,
                  decoration: const InputDecoration(
                    hintText: "password",
                  )),
              ElevatedButton(
                  onPressed: () {
                    loginapi(
                        username.text.toString(), password.text.toString());
                    setvalues();
                  },
                  child: const Text("save")),
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Alert!!"),
        content: new Text("Invalid Username or Password"),
        actions: <Widget>[
          TextButton(
            child: new Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
