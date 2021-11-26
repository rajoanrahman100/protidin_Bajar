import 'dart:async';

import 'package:customer_ui/welcomeScreen/welcome_page.dart';
import 'package:flutter/material.dart';

import 'welcomeScreen/changePassword.dart';
import 'welcomeScreen/siginInForm.dart';
//import 'Language.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      )
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 10), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()
    )
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE3FEFF),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Image.asset("assets/ui1.png",fit: BoxFit.cover,),
              height: 950,
              width: 480,
            ),
          ),
        )

    );
  }



}




