import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectRole extends StatelessWidget {
  const SelectRole({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          SvgPicture.asset(
            "assets/images/logo.svg",
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.25,
          ),
          SvgPicture.asset(
            "assets/images/SELECT ROLE.svg",
            width: MediaQuery.of(context).size.width * 0.17,
          ),
          const Text(
            "SELECT ROLE",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 7, 102, 149)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Container(
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Organization.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                hintText: 'Organization',
              ),
              borderRadius: BorderRadius.circular(8),
              hint: const Text(
                'Organization',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(8),
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Role.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                hintText: 'Role',
              ),
              hint: const Text(
                'Role',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: DropdownButtonFormField<String>(
              borderRadius: BorderRadius.circular(8),
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Warehouse.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                hintText: 'Warehouse',
              ),
              hint: const Text(
                'Warehouse',
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
              items: <String>['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const home()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 28, left: 28),
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                gradient: buttonColor,
                borderRadius: BorderRadius.circular(10),
                // color: Color.fromARGB(255, 7, 102, 149),
              ),
              child: const Center(
                child: Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: Container(
      //   decoration: const BoxDecoration(
      //     gradient:
      //         LinearGradient(end: AlignmentDirectional.bottomStart, colors: [
      //       Color.fromARGB(255, 31, 164, 216),
      //       Color.fromARGB(255, 7, 102, 149),
      //     ]),
      //   ),
      //   child: BottomNavigationBar(
      //       backgroundColor: Colors.transparent,
      //       type: BottomNavigationBarType.fixed,
      //       showSelectedLabels: false,
      //       showUnselectedLabels: false,
      //       items: [
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset("assets/images/Analytics.svg"),
      //             label: "home"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset("assets/images/Approvals.svg"),
      //             label: "home"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset("assets/images/Home.svg"),
      //             label: "home"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset("assets/images/notification.svg"),
      //             label: "home"),
      //         BottomNavigationBarItem(
      //             icon: SvgPicture.asset(
      //               "assets/images/Inventory Check.svg",
      //               color: Colors.white,
      //             ),
      //             label: "home"),
      //       ]),
      // )
    );
  }
}
