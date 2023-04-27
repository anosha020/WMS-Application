import 'package:erp_app_prac/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

class header extends StatefulWidget {
  const header({super.key, @required this.text});
  final text;
  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: const BoxDecoration(
        gradient: buttonColor,
      ),
      child: Center(
        child: Text(
          widget.text,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}

class header2 extends StatefulWidget {
  const header2({super.key, @required this.text});
  final text;

  @override
  State<header2> createState() => _header2State();
}

class _header2State extends State<header2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: const BoxDecoration(
        gradient: buttonColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          SvgPicture.asset(
            "assets/images/Icon feather-filter.svg",
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
