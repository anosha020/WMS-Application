import 'package:erp_app_prac/screens/Notification.dart';
import 'package:erp_app_prac/screens/Reports/reports.dart';
import 'package:erp_app_prac/screens/homeScreen.dart';
import 'package:erp_app_prac/utils/color.dart';
import 'package:erp_app_prac/widget/headers.dart';
import 'package:erp_app_prac/widget/myappbar.dart';
import 'package:erp_app_prac/widget/mybottomNavigator.dart';
import 'package:erp_app_prac/widget/mydrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class goodsReceDetails extends StatefulWidget {
  const goodsReceDetails({super.key});

  @override
  State<goodsReceDetails> createState() => _goodsReceDetailsState();
}

class _goodsReceDetailsState extends State<goodsReceDetails> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  DateTime _selectedDateto = DateTime.now();

  Future<void> _selectDateto(BuildContext context) async {
    final DateTime? pickedto = await showDatePicker(
      context: context,
      initialDate: _selectedDateto,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedto != null) {
      setState(() {
        _selectedDateto = pickedto;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          const header2(
            text: "REPORT",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
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
              icon: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 73, 162, 206)),
              ),
              iconSize: 35,
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
            height: MediaQuery.of(context).size.height * 0.09,
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: TextField(
              controller: TextEditingController(
                  text:
                      '${_selectedDate.day}-${_selectedDate.month}-${_selectedDate.year}'),
              onTap: () => _selectDate(context),
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Icon awesome-calendar-alt.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                labelText: 'Date From',
              ),
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.02,
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: TextField(
              controller: TextEditingController(
                  text:
                      '${_selectedDateto.day}-${_selectedDateto.month}-${_selectedDateto.year}'),
              onTap: () => _selectDateto(context),
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Icon awesome-calendar-alt.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                labelText: 'Date to',
              ),
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height * 0.02,
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.09,
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Product Category.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                hintText: 'Product Category',
              ),
              borderRadius: BorderRadius.circular(8),
              icon: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 73, 162, 206)),
              ),
              iconSize: 35,
              hint: const Text(
                'Product Category',
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
            height: MediaQuery.of(context).size.height * 0.09,
            margin: const EdgeInsets.only(right: 28, left: 28),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                prefixIcon: Container(
                  padding: const EdgeInsets.all(13),
                  child: SvgPicture.asset(
                    "assets/images/Locator.svg",
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 7, 102, 149), width: 1)),
                hintText: 'Locator',
              ),
              borderRadius: BorderRadius.circular(8),
              icon: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Icon(Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 73, 162, 206)),
              ),
              iconSize: 35,
              hint: const Text(
                'Locator',
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
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.22,
              decoration: BoxDecoration(
                  gradient: buttonColor,
                  borderRadius: BorderRadius.circular(4)),
              child: TextButton(
                  // ignore: deprecated_member_use
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: const Text(
                    "Done",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  )),
            ),
          )
        ]),
      ),
      bottomNavigationBar: MyBottomNavigationBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            _onItemTapped(index);
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
                break;
              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
                break;
              case 4:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const reportScreen()),
                );
                break;
            }
          }),
    );
  }

}