import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyOptions extends StatelessWidget {
  const MyOptions({super.key, @required this.text, this.onPressed});
  final text;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
              margin: EdgeInsets.only(right: 50, left: 50),
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 7, 102, 149), width: 0.6),
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 218, 212, 212),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Center(
                  child: Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ))),
    );
  }
}