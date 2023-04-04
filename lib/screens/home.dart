import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const Drawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: SvgPicture.asset("assets/images/Hamburger.svg"),
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                  ),
                  SvgPicture.asset(
                    "assets/images/username.svg",
                    width: MediaQuery.of(context).size.width * 0.08,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Buttons(
                icon: "assets/images/Inventory Movement.svg",
                text: 'Inventory Movement',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Buttons(
                icon: "assets/images/Inventory Check.svg",
                text: 'Inventory Check',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Buttons(
                icon: "assets/images/Putaway.svg",
                text: 'Put Away',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Buttons(
                icon: "assets/images/Picking.svg",
                text: 'Picking',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Buttons(
                icon: "assets/images/Reporting.svg",
                text: 'Reporting',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Buttons(
                icon: "assets/images/Approvals.svg",
                text: 'Approvals',
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
                  label: "home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/Approvals.svg"),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/Home.svg"),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/notification.svg"),
                  label: "home"),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/Inventory Check.svg",
                    color: Colors.white,
                  ),
                  label: "home"),
            ]),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  Buttons({Key? key, required this.text, required this.icon}) : super(key: key);
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          print("working");
        },
        child: Container(
          margin: EdgeInsets.only(right: 40, left: 40),
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
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25),
                child: SvgPicture.asset(
                  icon,
                  width: MediaQuery.of(context).size.width * 0.08,
                  color: Color.fromARGB(255, 34, 153, 212),
                ),
              ),
              Text(
                text,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
