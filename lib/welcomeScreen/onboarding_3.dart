import 'dart:async';

import 'package:flutter/material.dart';

import 'sigininform.dart';
//import 'Language.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage3(),
      )
  );
}

class OnBoardingPage3 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OnBoardingPage3> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECEEF6),
      //backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 22,),

            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,0),
              child: Container(
                height: 400,
                width: 540,
                child: Image.asset("assets/img_14.png",fit: BoxFit.cover,),
              ),
            ),

            Center(
              child: Container(
                height: 150,
                width: 330,
                child: Image.asset("assets/img_15.png"),
              ),
            ),



            Center(
              child: Container(
                height: 50,
                width: 330,
                child: Image.asset("assets/img_16.png"),
              ),
            ),

            Center(
              child: Container(
                height: 50,
                width: 330,
                child: Image.asset("assets/img_19.png"),
              ),
            ),

            SizedBox(height: 75,),

            Container(
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.150,
                  color:  Colors.cyan,
                ),

                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [

                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.1),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(
                        0, 2),
                  ),



                ],
              ),

              child:InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Next",style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 160,
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }

}




