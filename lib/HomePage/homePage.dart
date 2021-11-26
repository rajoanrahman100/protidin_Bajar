import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[50],
        //backgroundColor: Colors.indigo[50],
        body: SingleChildScrollView(
            child: Column(
                children: [

                  SizedBox(height: 20,),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Container(

                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.150,
                            color:  Colors.cyan,
                          ),

                          color: Colors.deepPurpleAccent,
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

                        //width: 330,
                        width: MediaQuery.of(context).size.width/1.1,
                        height: 45,

                        child: Row(
                          children: [

                            Container(
                              height: 20,
                              width: 100,
                              child: Image.asset("assets/img_27.png"),
                            ),

                            Container(
                              height: 20,
                              width: 230,
                              child: Image.asset("assets/img_29.png"),
                            ),

                            Container(
                              height: 20,
                              width: 100,
                              child: Image.asset("assets/m.png"),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),


                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Container(
                  //       height: 45,
                  //       //width: 200,
                  //       width: MediaQuery.of(context).size.width/1.4,
                  //       child: Image.asset("assets/img_31.png"),
                  //     ),
                  //   ),
                  // ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 40,
                        //width: 200,
                        width: MediaQuery.of(context).size.width/1.1,
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                child: Image.asset("assets/img_49.png")),
                            Text("  Protidin PG Store, Shahbag ",style: TextStyle(
                                color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700
                            ),),
                            Image.asset("assets/img_50.png"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),

                  
                  ///
                  Container(
                    //width: 320.0,
                    width: MediaQuery.of(context).size.width/1.1,
                    height: 200.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img_32.png"),
                            fit: BoxFit.cover
                        )
                    ),

                    child: Row(
                      children: [

                        Container(
                          height: 125,
                          width: 200,
                          child: Image.asset("assets/img_33.png"),
                        ),



                        Container(
                          height: 105,
                          child: Row(

                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 35,
                                    width: 180,
                                    child: Text("Enjoy buy 1 get one offer\n throughout september",style: TextStyle(
                                        color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 110,
                                    child: Image.asset("assets/img_35.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),



                      ],
                    ),

                  ),
                  ///


                  SizedBox(height: 20,),

                  Container(
                    width: MediaQuery.of(context).size.width/1.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 30,
                          width: 200,
                          child: Text("Offer For You",style: TextStyle(
                              color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900
                          ),),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          height: 30,
                          width: 100,
                          child: Text("  View All",style: TextStyle(
                              color: Colors.black,fontSize: 14,fontWeight: FontWeight.w900
                          ),),
                        ),
                      ],
                    ),
                  ),




                  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 0),
                      child: FittedBox(
                        child: Container(
                          //width: MediaQuery.of(context).size.width/1.1,
                          child: Row(
                            children: <Widget>[

                              Container(
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage("assets/img_37.png"),
                                      fit: BoxFit.cover
                                  ),

                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),



                              Padding(padding: const EdgeInsets.only(right: 15),),

                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: const EdgeInsets.only(right: 15),),

                              Container(
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage("assets/img_37.png"),
                                      fit: BoxFit.cover
                                  ),

                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: const EdgeInsets.only(right: 15),),

                              Container(
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage("assets/img_37.png"),
                                      fit: BoxFit.cover
                                  ),

                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(padding: const EdgeInsets.only(right: 15),),

                              Container(
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage("assets/img_37.png"),
                                      fit: BoxFit.cover
                                  ),

                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(padding: const EdgeInsets.only(right: 15),),

                              Container(
                                decoration: BoxDecoration(

                                  image: DecorationImage(
                                      image: AssetImage("assets/img_37.png"),
                                      fit: BoxFit.cover
                                  ),

                                  color: Colors.blue[400],
                                  borderRadius: BorderRadius.circular(
                                      15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.2),
                                      spreadRadius: 5, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2),
                                    ),
                                  ],
                                ),
                                height: 175,
                                //width: 270,
                                width: MediaQuery.of(context).size.width/1.4,
                                //color: Colors.cyan,
                                child: Row(

                                  children: [


                                    SizedBox(height: 10,),
                                    Container(
                                      height: 120,
                                      width: 160,
                                      child: Image.asset("assets/img_38.png"),
                                    ),
                                    Container(
                                      height: 140,
                                      width: 150,
                                      child: Image.asset("assets/img_39.png"),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(padding: const EdgeInsets.only(right: 15),),



                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ////////////////////////////////////////////////////////////////


                  SizedBox(height: 15,),


                  Container(
                    decoration: BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey
                              .withOpacity(0.2),
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(
                              0, 2),
                        ),
                      ],
                    ),

                    height: 950,
                    width: MediaQuery.of(context).size.width/1,

                    child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment:Alignment.centerLeft,
                              child: Text("Shop By Category",style: TextStyle(
                                  color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900
                              ),),
                            ),
                          ),

                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0,top: 5),
                                child: Row(
                                  children: <Widget>[

                                    Container(
                                      decoration: BoxDecoration(

                                        image: DecorationImage(
                                            image: AssetImage("assets/img_40.png"),
                                            fit: BoxFit.cover
                                        ),

                                        color: Colors.blue[400],
                                        borderRadius: BorderRadius.circular(
                                            15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey
                                                .withOpacity(0.2),
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(
                                                0, 2),
                                          ),
                                        ],
                                      ),
                                      height: 260,
                                      width: 200,
                                      //color: Colors.cyan,
                                      child: Container(
                                        height: 140,
                                        width: 200,
                                        child: Image.asset("assets/img_44.png"),
                                      ),
                                    ),



                                    Padding(padding: const EdgeInsets.only(right: 15),),

                                    Container(
                                      decoration: BoxDecoration(

                                        image: DecorationImage(
                                            image: AssetImage("assets/img_48.png"),
                                            fit: BoxFit.cover
                                        ),

                                        borderRadius: BorderRadius.circular(
                                            15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey
                                                .withOpacity(0.2),
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(
                                                0, 2),
                                          ),
                                        ],
                                      ),
                                      height: 260,
                                      width: 200,
                                      //color: Colors.cyan,
                                      child: Container(
                                        height: 140,
                                        width: 200,
                                        child: Image.asset("assets/img_43.png"),
                                      ),
                                    ),
                                    Padding(padding: const EdgeInsets.only(right: 15),),

                                    Container(
                                      decoration: BoxDecoration(

                                        image: DecorationImage(
                                            image: AssetImage("assets/img_44.png"),
                                            fit: BoxFit.cover
                                        ),

                                        borderRadius: BorderRadius.circular(
                                            15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey
                                                .withOpacity(0.2),
                                            spreadRadius: 5, //spread radius
                                            blurRadius: 7, // blur radius
                                            offset: Offset(
                                                0, 2),
                                          ),
                                        ],
                                      ),
                                      height: 260,
                                      width: 200,
                                      //color: Colors.cyan,
                                      child: Container(
                                        height: 100,
                                        width: 200,
                                        child: Image.asset("assets/img_43.png"),
                                      ),
                                    ),
                                    Padding(padding: const EdgeInsets.only(right: 15),),



                                  ],
                                ),

                              )

                          ),
                          ////////

                          SizedBox(height: 15,),

                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment:Alignment.centerLeft,
                              child: Text("Essentials- Top Food",style: TextStyle(
                                  color: Colors.black,fontSize: 22,fontWeight: FontWeight.w900
                              ),),
                            ),
                          ),


                          ////
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0,top: 5),
                                  child: Row(
                                      children: <Widget>[

                                        Container(
                                          decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: AssetImage("assets/img_40.png"),
                                                fit: BoxFit.cover
                                            ),

                                            color: Colors.indigo[100],
                                            borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.15),
                                                spreadRadius: 5, //spread radius
                                                blurRadius: 5, // blur radius
                                                offset: Offset(
                                                    0, 3),
                                              ),
                                            ],
                                          ),
                                          height: 280,
                                          width: 250,
                                          //color: Colors.cyan,
                                          child: Column(
                                            children: [

                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: 50,
                                                  width: 120,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(12.0),
                                                    child: Text("25% Offer",style: TextStyle(
                                                        color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                    ),),
                                                  ),
                                                ),
                                              ),



                                              Container(

                                                height: 180,
                                                width: 200,
                                                child: Image.asset("assets/img_45.png"),
                                              ),
                                              Row(
                                                children: [
                                                  //SizedBox(height: 10,),


                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Text("    @700Tk",style: TextStyle(
                                                          color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                      ),),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Image.asset("assets/img_46.png"),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),



                                        Padding(padding: const EdgeInsets.only(right: 15),),

                                        Container(
                                          decoration: BoxDecoration(

                                            // image: DecorationImage(
                                            //     image: AssetImage("assets/img_40.png"),
                                            //     fit: BoxFit.cover
                                            // ),

                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.15),
                                                spreadRadius: 5, //spread radius
                                                blurRadius: 5, // blur radius
                                                offset: Offset(
                                                    0, 3),
                                              ),
                                            ],
                                          ),
                                          height: 280,
                                          width: 250,
                                          //color: Colors.cyan,
                                          child: Column(
                                            children: [

                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: 50,
                                                  width: 120,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(12.0),
                                                    child: Text("15% Offer",style: TextStyle(
                                                        color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                    ),),
                                                  ),
                                                ),
                                              ),



                                              Container(
                                                height: 180,
                                                width: 200,
                                                child: Image.asset("assets/img_47.png"),
                                              ),
                                              Row(
                                                children: [
                                                  //SizedBox(height: 10,),


                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Text("    @100Tk",style: TextStyle(
                                                          color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                      ),),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Image.asset("assets/img_46.png"),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),

                                        Container(
                                          decoration: BoxDecoration(

                                            image: DecorationImage(
                                                image: AssetImage("assets/img_47.png"),
                                                fit: BoxFit.cover
                                            ),

                                            color: Colors.blue[400],
                                            borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.15),
                                                spreadRadius: 5, //spread radius
                                                blurRadius: 5, // blur radius
                                                offset: Offset(
                                                    0, 3),
                                              ),
                                            ],
                                          ),
                                          height: 290,
                                          width: 250,
                                          //color: Colors.cyan,
                                          child: Column(
                                            children: [

                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  height: 50,
                                                  width: 120,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(12.0),
                                                    child: Text("15% Offer",style: TextStyle(
                                                        color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                    ),),
                                                  ),
                                                ),
                                              ),



                                              Container(
                                                height: 190,
                                                width: 200,
                                                child: Image.asset("assets/img_45.png"),
                                              ),
                                              Row(
                                                children: [
                                                  //SizedBox(height: 10,),


                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Text("    @700Tk",style: TextStyle(
                                                          color: Colors.black,fontSize: 18,fontWeight: FontWeight.w900
                                                      ),),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 120,
                                                    child: Image.asset("assets/img_46.png"),
                                                  ),
                                                ],
                                              ),

                                            ],
                                          ),
                                        ),

                                      ])))


                          ///////










                        ]
                    ),
                  ),








                ]
            )
        )
    );
  }

}




