import 'dart:async';

import 'package:customer_ui/HomePage/cart/cart_details.dart';
import 'package:customer_ui/HomePage/grocer_offer/grocery_offer_page.dart';
import 'package:customer_ui/HomePage/offer/offer_page.dart';
import 'package:customer_ui/welcomeScreen/sigininform.dart';
import 'package:customer_ui/welcomeScreen/signupform.dart';
import 'package:customer_ui/welcomeScreen/welcome_page.dart';
import 'package:flutter/material.dart';

import 'HomePage/grocer_offer/grocery_details.dart';
import 'HomePage/homepage.dart';
//import 'Language.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE3FEFF),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Image.asset(
                "assets/ui1.PNG",
                fit: BoxFit.cover,
              ),
              height: 950,
              width: 480,
            ),
          ),
        ));
  }
}
