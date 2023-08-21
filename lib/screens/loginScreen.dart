// import 'package:erp_app_prac/screens/home.dart';
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:erp_app_prac/screens/splashScreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../service/apis.dart';
// import '../utils/alert.dart';
import '../utils/color.dart';
import 'Select_Role.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController serverAddress = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  FocusNode serverAddressFocus = FocusNode();
  FocusNode usernameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  late bool _obscureText = true;

  setvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString("serveraddress", serverAddress.text.toString());
    sp.setString("username", username.text.toString());
  }

  getvalues() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    serverAddress.text = sp.getString("serveraddress") ?? "";
    username.text = sp.getString("username") ?? "";
    // print(username);
    return username;
    return serverAddress;
  }

  @override
  void initState() {
    // username = TextEditingController(text: name);
    // print("this is username {$username}");
    // TODO: implement initState
    super.initState();
    getvalues();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   serverAddressFocus.addListener(_onFocusChange);
  // }

  // @override
  // void dispose() {
  //   serverAddressFocus.removeListener(_onFocusChange);
  //   serverAddressFocus.dispose();
  //   serveraddress.dispose();
  //   super.dispose();
  // }

  // void _onFocusChange() {
  //   if (serverAddressFocus.hasFocus &&
  //       MediaQuery.of(context).viewInsets.bottom == 0.0) {
  //     serverAddressFocus.unfocus();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    bool serverAdressisSelected = serverAddressFocus.hasFocus;
    bool usernameisSelected = usernameFocus.hasFocus;
    bool passwordisSelected = passwordFocus.hasFocus;

    // onpressed() {
    //   if (serverAddress.text != "" &&
    //       username.text != "" &&
    //       password.text != "") {
    //     loginapi(context, serverAddress.text.toString(),
    //         username.text.toString(), password.text.toString());
    //   }
    //   else if (serverAddress.text == "" && serverAdressisSelected == false) {
    //     serverAddressFocus.requestFocus();
    //   } else if (serverAddress.text == "" && serverAdressisSelected == true) {
    //     ShowDialog(context, "Enter your server address to continue");
    //   } else if (serverAddress.text != "" && serverAdressisSelected == true) {
    //     serverAddressFocus.unfocus();
    //     usernameFocus.requestFocus();
    //   } else if (username.text == "" && usernameisSelected == false) {
    //     usernameFocus.requestFocus();
    //   } else if (username.text == "" && usernameisSelected == true) {
    //     ShowDialog(context, "Enter your username to continue");
    //   } else if (username.text != "" && usernameisSelected == true) {
    //     usernameFocus.unfocus();
    //     passwordFocus.requestFocus();
    //   } else if (password.text == "" && passwordisSelected == false) {
    //     passwordFocus.requestFocus();
    //   } else if (password.text == "" && passwordisSelected == true) {
    //     ShowDialog(context, "Enter your password to continue");
    //   } else if (password.text != "" && passwordisSelected == true) {
    //     loginapi(context, serverAddress.text.toString(),
    //         username.text.toString(), password.text.toString());
    //     usernameFocus.requestFocus();
    //   }
    //   else {
    //     loginapi(context, serverAddress.text.toString(),
    //         username.text.toString(), password.text.toString());
    //   }
    // }

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              SvgPicture.asset(
                "assets/images/logo.svg",
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.25,
              ),
              SvgPicture.asset(
                "assets/images/login.svg",
                width: MediaQuery.of(context).size.width * 0.17,
              ),
              const Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color.fromARGB(255, 7, 102, 149)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              textfieldwidget(
                  focusNode: serverAddressFocus,
                  controller: serverAddress,
                  hinttext: "Server Address",
                  obscuretext: false,
                  keyboardtype: TextInputType.url,
                  icon: "assets/images/serveraddress.svg",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*Server Address Required";
                    }
                    return null;
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              textfieldwidget(
                  focusNode: usernameFocus,
                  controller: username,
                  obscuretext: false,
                  keyboardtype: TextInputType.name,
                  hinttext: "Username",
                  icon: "assets/images/username.svg",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*Username Required";
                    }
                    return null;
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              textfieldwidget(
                  focusNode: passwordFocus,
                  controller: password,
                  keyboardtype: TextInputType.visiblePassword,
                  obscuretext: _obscureText,
                  hinttext: "Password",
                  icon: "assets/images/password.svg",
                  suffixicon: GestureDetector(
                    onTap: (() {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    }),
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: const Color.fromARGB(255, 34, 153, 212),
                      size: 25,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "*Password Required";
                    }
                    return null;
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              InkWell(
                onTap: handleButton,
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
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }

  handleButton() async {
    if (_formkey.currentState!.validate()) {
      // login(context);
      // ignore: use_build_context_synchronously
      // Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => const SelectRole()));
      // ignore: use_build_context_synchronously
      loginapi(context, serverAddress.text.toString(), username.text.toString(),
          password.text.toString());
      var sp = await SharedPreferences.getInstance();
      sp.setBool(SplashScreenState.KEYLOGIN, true);
      if (_obscureText == false) {
        _obscureText = true;
      }
      // onpressed();
      setvalues();
    }
  }
}

// ignore: camel_case_types
class textfieldwidget extends StatefulWidget {
  const textfieldwidget(
      {super.key,
      @required this.hinttext,
      this.icon,
      this.controller,
      this.focusNode,
      this.validator,
      this.suffixicon,
      this.keyboardtype,
      this.obscuretext});
  final hinttext;
  final icon;
  final controller;
  final focusNode;
  final String? Function(String?)? validator;
  final suffixicon;
  final keyboardtype;
  final obscuretext;

  @override
  State<textfieldwidget> createState() => _textfieldwidgetState();
}

// ignore: camel_case_types
class _textfieldwidgetState extends State<textfieldwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 28, left: 28),
      child: TextFormField(
        focusNode: widget.focusNode,
        textInputAction: TextInputAction.next,
        keyboardType: widget.keyboardtype,
        obscureText: widget.obscuretext,
        controller: widget.controller,
        decoration: InputDecoration(
          suffixIcon: widget.suffixicon,
          prefixIcon: Container(
            padding: const EdgeInsets.all(13),
            child: SvgPicture.asset(
              widget.icon,
              width: MediaQuery.of(context).size.width * 0.01,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 102, 149), width: 1)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 102, 149), width: 1)),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 102, 149), width: 1)),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 102, 149), width: 1)),
          hintText: widget.hinttext,
        ),
        validator: widget.validator,
      ),
    );
  }
}
