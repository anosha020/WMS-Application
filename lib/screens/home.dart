import 'package:erp_app_prac/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Screen"),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Buttons(
              text: 'Inventory Move',
            ),
            SizedBox(
              height: 10,
            ),
            Buttons(
              text: 'Pick Away',
            ),
            SizedBox(
              height: 10,
            ),
            Buttons(
              text: 'Put Away',
            ),
            SizedBox(
              height: 10,
            ),
            Buttons(
              text: 'GRN',
            ),
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.amber,
      child: InkWell(
        onTap: () {
          highlightColor:
          Colors.blue.withOpacity(0.4);
          splashColor:
          Colors.green.withOpacity(0.5);
          print("working");
        },
        child: Container(
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          )),
          height: 70,
          width: 300,
          decoration: BoxDecoration(
            // color: Colors.white70,
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.blue]),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 184, 182, 182),
                blurRadius: 5.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 4.0), // shadow direction: bottom right
              )
            ],
          ),
        ),
      ),
    );
  }
}
