import 'dart:async';

import 'package:flutter/material.dart';

import 'changePassword.dart';
import 'signUpForm.dart';
//import 'Language.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(),
      )
  );
}

class SignInPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 130,),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                height: 70,
                width: 340,
                child: Image.asset("assets/img_20.png", fit: BoxFit.cover,),
              ),
            ),

            SizedBox(height: 25,),

            Center(
              child: Container(
                height: 120,
                width: 330,
                child: Image.asset("assets/img_21.png"),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.150,
                    color: Colors.cyan,
                  ),
                  //color: Color(0xFFEFFCF9),
                  //color: Color(0xFFEEFAF1),
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(15),
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

                width: 320,
                child: Row(
                  children: [

                    Padding(padding: const EdgeInsets.only(right: 10),),

                    Container(
                      height: 20,
                      width: 25,
                      // child: Image.network(
                      //     "https://www.pngkit.com/png/full/208-2084108_cell-phone-icon-blue.png"
                      // ),
                    ),

                    //Padding(padding: const EdgeInsets.only(right: 30),),

                    Container(
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(

                          hintText: 'username or email',
                        ),
                      ),
                      width: 260,
                    ),
                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.150,
                    color: Colors.cyan,
                  ),
                  //color: Color(0xFFEFFCF9),
                  //color: Color(0xFFEEFAF1),
                  color: Colors.deepPurple[50],
                  borderRadius: BorderRadius.circular(15),
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

                width: 320,
                child: Row(
                  children: [

                    Padding(padding: const EdgeInsets.only(right: 10),),

                    Container(
                      height: 20,
                      width: 25,
                      // child: Image.network(
                      //     "https://www.pngkit.com/png/full/208-2084108_cell-phone-icon-blue.png"
                      // ),
                    ),

                    //Padding(padding: const EdgeInsets.only(right: 30),),

                    Container(
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(

                          hintText: 'password',
                        ),
                      ),
                      width: 260,
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 10,),

            Container(
              width: 340,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.150,
                  color: Colors.cyan,
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

              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "Sign In", style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 160,
                ),
              ),
            ),


            SizedBox(height: 15,),

            Center(

              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: RaisedButton(
                  color: Colors.white,
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text("Forgot password", style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      decorationThickness: 2.5

                  )),
                ),
              ),
            ),


            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(60, 10, 10, 10),
                child: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(
                  //     width: 0.150,
                  //     color:  Colors.cyan,
                  //   ),
                  //   //color: Color(0xFFEFFCF9),
                  //   //color: Color(0xFFEEFAF1),
                  //   //color: Colors.deepPurple[50],
                  //   borderRadius: BorderRadius.circular(15),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey
                  //           .withOpacity(0.1),
                  //       spreadRadius: 5, //spread radius
                  //       blurRadius: 5, // blur radius
                  //       offset: Offset(
                  //           0, 2),
                  //     ),
                  //   ],
                  // ),

                  width: 300,
                  child: Row(
                    children: [

                      Container(
                        height: 25,
                        width: 75,
                        child: Image.asset("assets/img_22.png"),
                      ),

                      Container(
                        height: 25,
                        width: 75,
                        child: Image.asset("assets/fbook.png"),
                      ),

                      Container(
                        height: 25,
                        width: 75,
                        child: Image.asset("assets/img_23.png"),
                      ),

                    ],
                  ),
                ),
              ),
            ),


            SizedBox(height: 25,),


            Container(
              width: 340,
              height: 50,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     width: 0.150,
              //     //color:  Colors.cyan,
              //   ),
              //
              //   //color: Colors.deepPurpleAccent,
              //   borderRadius: BorderRadius.circular(30),
              //   boxShadow: [
              //
              //     BoxShadow(
              //       color: Colors.grey
              //           .withOpacity(0.1),
              //       spreadRadius: 5, //spread radius
              //       blurRadius: 5, // blur radius
              //       offset: Offset(
              //           0, 2),
              //     ),
              //   ],
              // ),

              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                child: Container(
                  child: Center(
                    child: Image.asset("assets/img_24.png"),
                  ),
                ),
                //width: 160,
              ),
            ),


          ],
        ),
      ),

    );
  }


  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(child: Text("Forgot Password")),
      content: Text("We have sent you an url to change your password \n                       to your name@gmail.com"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

}


