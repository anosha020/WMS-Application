import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyBottomNavigationBar extends StatefulWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const MyBottomNavigationBar({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(end: AlignmentDirectional.bottomStart, colors: [
          Color.fromARGB(255, 31, 164, 216),
          Color.fromARGB(255, 7, 102, 149),
        ]),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Analytics.svg"),
              label: "analysis"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Approvals.svg"),
              label: "approvals"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Home.svg"), label: "home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/notification.svg"),
              label: "notifications"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/Inventory Check.svg",
                color: Colors.white,
              ),
              label: "reports"),
        ],
        currentIndex: widget.selectedIndex,
        onTap: widget.onItemTapped,
      ),
    );
  }
}
