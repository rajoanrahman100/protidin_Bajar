import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';
import 'offer_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          //backgroundColor: Colors.indigo[50],
          body: SingleChildScrollView(
              child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.150,
                      color: Colors.cyan,
                    ),
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5, //spread radius
                        blurRadius: 5, // blur radius
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),

                  //width: 330,
                  //width: MediaQuery.of(context).size.width/1.1,
                  height: 45,

                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 20,
                          width: 100,
                          child: Image.asset("assets/img_27.png"),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          height: 20,
                          width: 230,
                          child: Image.asset("assets/img_29.png"),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 20,
                          width: 100,
                          child: Image.asset("assets/m.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 40,
                  //width: 200,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Row(
                    children: [
                      SizedBox(height: 20, child: Image.asset("assets/img_49.png")),
                      Text(
                        "  Protidin PG Store, Shahbag ",
                        style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w700),
                      ),
                      Image.asset("assets/img_50.png"),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),

            ///
            Container(
              //width: 320.0,
              width: MediaQuery.of(context).size.width / 1.1,
              height: 200.0,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/img_32.png"), fit: BoxFit.cover)),

              child: Row(
                children: [
                  SizedBox(
                    height: 125,
                    width: 200,
                    child: Image.asset("assets/img_33.png"),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 105,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Enjoy buy 1 get one offer\n throughout september",
                                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 60,
                                width: 110,
                                child: Image.asset("assets/img_35.png"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Text(
                        "Offer For You",
                        style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                      ),
                    ),
                    Text(
                      "  View All",
                      style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            ),
            sized10,

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 0),
                child: FittedBox(
                  child: SizedBox(
                    //width: MediaQuery.of(context).size.width/1.1,
                    child: Row(
                      children: <Widget>[
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                        OfferWidget(
                          color: Colors.blue[400],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              height: 685,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Shop By Category",
                      style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: height * 0.2,
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                  spreadRadius: 2,
                                  color: Colors.black.withOpacity(0.1),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: Image.asset("assets/offerone.png")),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Essentails",
                                    style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: block * 4),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: height * 0.2,
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: Image.asset("assets/offerone.png")),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Breakfast & Snacks",
                                    style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: block * 4),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: height * 0.2,
                            margin: EdgeInsets.only(
                              right: 10,
                              top: 5,
                              bottom: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen[50],
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 5,
                                  color: Colors.black.withOpacity(0.3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Expanded(child: Image.asset("assets/dove.png")),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Skin Care",
                                    style: TextStyle(color: kBlackColor, fontWeight: FontWeight.bold, fontSize: block * 4),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                ////////

                SizedBox(
                  height: 15,
                ),

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Essentials- Top Deals",
                      style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                    ),
                  ),
                ),

                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      ProductItemsWidget(
                        height: height,
                        width: width,
                        block: block,
                        image: "assets/lays.png",
                        productName: "Lays Premium Taste Chips-Orange",
                        productWeight: "60g",
                        productActualPrice: "BDT 125",
                        productOfferPrice: "BDT 100",
                      ),
                      ProductItemsWidget(
                        height: height,
                        width: width,
                        block: block,
                        image: "assets/dove.png",
                        productName: "Dove Natural Moyesture Skin Care ",
                        productWeight: "60g",
                        productActualPrice: "BDT 400",
                        productOfferPrice: "BDT 300",
                      ),
                      ProductItemsWidget(
                        height: height,
                        width: width,
                        block: block,
                        image: "assets/cadebry.png",
                        productName: "Cadbery Chocolate Milk Candy",
                        productWeight: "20g",
                        productActualPrice: "BDT 120",
                        productOfferPrice: "BDT 110",
                      ),
                    ]))
              ]),
            ),


            ///
            Container(
              height: 480,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_51.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "1-99 store",
                            style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "view All",
                            style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 105,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset("assets/img_52.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  ///
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 5),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_56.png"), fit: BoxFit.cover),
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "25% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Image.asset("assets/img_46.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_56.png"), fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_47.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @100Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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
                                image: DecorationImage(image: AssetImage("assets/img_56.png"), fit: BoxFit.cover),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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

                  ///
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 650,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_54.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Grocery",
                            style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "     view All",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 105,
                    //width: 330,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset("assets/img_55.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    color: Colors.indigo[100],
                    height: 120,
                    width: MediaQuery.of(context).size.width / 1.2,
                    //child: Image.asset("assets/img_60.png"),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Grocery - Top Deals",
                          style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 00,
                  ),

                  ///
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 5),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "25% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Image.asset("assets/img_46.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_47.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @100Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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

                  ///
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_61.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 200,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Image.asset("assets/img_62.png"),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              height: 650,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_54.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Beverages",
                            style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "     view All",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 105,
                    //width: 330,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset("assets/img_63.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    color: Colors.indigo[100],
                    height: 120,
                    width: MediaQuery.of(context).size.width / 1.2,
                    //child: Image.asset("assets/img_60.png"),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Grocery - Top Deals",
                          style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 00,
                  ),

                  ///
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 5),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "25% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Image.asset("assets/img_46.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_47.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @100Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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

                  ///
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_65.png"), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 420,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Image.asset("assets/img_66.png"),
            ),

            SizedBox(
              height: 20,
            ),

            ///
            Container(
              height: 650,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_54.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Baby & Kids",
                            style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "     view All",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 105,
                    //width: 330,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset("assets/img_67.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    color: Colors.indigo[100],
                    height: 120,
                    width: MediaQuery.of(context).size.width / 1.2,
                    //child: Image.asset("assets/img_60.png"),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Grocery - Top Deals",
                          style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 00,
                  ),

                  ///
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 5),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "25% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Image.asset("assets/img_46.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_47.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @100Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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

                  ///
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_69.png"), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 250,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Image.asset("assets/img_70.png"),
            ),

            SizedBox(
              height: 20,
            ),

            ///
            Container(
              height: 650,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_54.png"), fit: BoxFit.cover),
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      SizedBox(
                        height: 45,
                        width: 200,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Fruits & vegetable",
                            style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "     view All",
                            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 105,
                    //width: 330,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset("assets/img_71.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Container(
                    color: Colors.indigo[100],
                    height: 120,
                    width: MediaQuery.of(context).size.width / 1.2,
                    //child: Image.asset("assets/img_60.png"),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Grocery - Top Deals",
                          style: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 00,
                  ),

                  ///
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 5),
                          child: Row(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.indigo[100],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "25% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Image.asset("assets/img_46.png"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 180,
                                    width: 200,
                                    child: Image.asset("assets/img_47.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @100Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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
                                image: DecorationImage(image: AssetImage("assets/img_57.png"), fit: BoxFit.cover),
                                color: Colors.blue[400],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.15),
                                    spreadRadius: 5, //spread radius
                                    blurRadius: 5, // blur radius
                                    offset: Offset(0, 3),
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
                                    child: SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          "15% Offer",
                                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 190,
                                    width: 200,
                                    child: Image.asset("assets/img_45.png"),
                                  ),
                                  Row(
                                    children: [
                                      //SizedBox(height: 10,),

                                      SizedBox(
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            "    @700Tk",
                                            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
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

                  ///
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/img_72.png"), fit: BoxFit.cover),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 5, //spread radius
                    blurRadius: 5, // blur radius
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 130,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Image.asset("assets/img_73.png"),
            ),

            SizedBox(
              height: 20,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 115,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Image.asset("assets/img_74.png"),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.150,
                    color: Colors.cyan,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5, //spread radius
                      blurRadius: 5, // blur radius
                      offset: Offset(0, 2),
                    ),
                  ],
                ),

                width: MediaQuery.of(context).size.width / 1.1,
                //width: 320,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                    ),
                    Container(
                      child: Icon(Icons.search_rounded),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                    ),
                    SizedBox(
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'Search by name or brand',
                        ),
                      ),
                      width: 240,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 70,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset("assets/img_75.png"),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
          ]))),
    );
  }
}
