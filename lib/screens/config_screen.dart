import 'package:erp_app_prac/screens/login_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  // get username => username.text;

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  TextEditingController serveraddress = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController role = TextEditingController();
  TextEditingController organization = TextEditingController();
  TextEditingController warehouse = TextEditingController();

  setvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("UserName", username.text.toString());
    sp.setString("ServerAddress", serveraddress.text.toString());
    sp.setString("Role", role.text.toString());
    sp.setString("Organization", organization.text.toString());
    sp.setString("Warehouse", warehouse.text.toString());
    // print(username);
  }

  getvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    username.text = sp.getString("UserName") ?? "";
    serveraddress.text = sp.getString("ServerAddress") ?? "";
    role.text = sp.getString("Role") ?? "";
    organization.text = sp.getString("Organization") ?? "";
    warehouse.text = sp.getString("Warehouse") ?? "";
    // print(username);
    // return username;
  }

  // toaddstring() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString("username", username as String);
  //   // stringValue = prefs.getString('username');
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => loginscreen()),
  //   );
  //   print(stringValue);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // username1 = TextEditingController(text: "username");
    getvalues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 20, right: 8, top: 40),
      child: Column(
        children: [
          TextField(
              controller: serveraddress,
              decoration: InputDecoration(
                hintText: "server address",
              )),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: username,
              decoration: InputDecoration(
                hintText: "user name",
              )),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: "password",
              )),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: role,
              decoration: InputDecoration(
                hintText: "role",
              )),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: organization,
              decoration: InputDecoration(
                hintText: "organization",
              )),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: warehouse,
              decoration: InputDecoration(
                hintText: "warehouse",
              )),
          ElevatedButton(
              onPressed: () async {
                print("its working");
                // await getvalues();
                setvalues();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginscreen()),
                );
              },
              child: Text("save")),
        ],
      ),
    ));
  }
}
