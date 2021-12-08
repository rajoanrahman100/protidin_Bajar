import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

import 'gorcery_item_widget.dart';
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
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(children: [
              Center(
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
              sized10,
              Align(
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

              SizedBox(
                height: 5,
              ),

              ///
              Container(
                //width: 320.0,
                width: MediaQuery.of(context).size.width / 1.1,
                height: 200.0,
                decoration:
                    const BoxDecoration(image: DecorationImage(image: AssetImage("assets/img_32.png"), fit: BoxFit.cover)),

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

              SizedBox(
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
              sized10,

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
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

              SizedBox(
                height: 15,
              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                //height: 685,
                width: MediaQuery.of(context).size.width / 1,
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Shop By Category",
                      style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                    ),
                  ),

                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
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
                      )),
                  ////////

                  SizedBox(
                    height: 15,
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Essentials- Top Deals",
                      style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
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
              sized20,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(10.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1-99 Store",
                            style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "view all",
                            style: TextStyle(color: Colors.white, fontSize: block * 4, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      sized10,
                      Stack(
                        children: [
                          Image.asset("assets/posterfive.png"),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Row(
                              children: [
                                Text(
                                  "Everything under BDT 99",
                                  style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  color: Colors.white,
                                  size: block * 6,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      sized10,
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
                    ],
                  ),
                ),
              ),
              sized20,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Grocery",
                    style: TextStyle(color: kBlackColor, fontSize: block * 5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              sized20,

              Stack(
                children: [
                  Image.asset("assets/posterone.png"),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          "Shop for daily needs",
                          style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: block * 6,
                        )
                      ],
                    ),
                  )
                ],
              ),
              sized20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/rin.png",
                      title: "Essentials\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/whitechips.png",
                      title: "Snacks\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/dove.png",
                      title: "Personal\nCare",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/lays.png",
                      title: "Chips\nChocolate",
                    ),
                  ],
                ),
              ),
              sized20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grocery- Top Deals",
                  style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                ),
              ),
              sized20,
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
                  ])),
              sized20,
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
              sized20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beverages",
                    style: TextStyle(color: kBlackColor, fontSize: block * 5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              sized20,

              Stack(
                children: [
                  Image.asset("assets/postertwo.png"),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          "Sip it up",
                          style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: block * 6,
                        )
                      ],
                    ),
                  )
                ],
              ),
              sized20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/rin.png",
                      title: "Essentials\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/whitechips.png",
                      title: "Snacks\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/dove.png",
                      title: "Personal\nCare",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/lays.png",
                      title: "Chips\nChocolate",
                    ),
                  ],
                ),
              ),
              sized20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grocery- Top Deals",
                  style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                ),
              ),
              sized20,
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    ]),
                  )),
              sized20,
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
              sized20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Baby and kids",
                    style: TextStyle(color: kBlackColor, fontSize: block * 5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              sized20,

              Stack(
                children: [
                  Image.asset("assets/postertwo.png"),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          "Sip it up",
                          style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: block * 6,
                        )
                      ],
                    ),
                  )
                ],
              ),
              sized20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/rin.png",
                      title: "Essentials\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/whitechips.png",
                      title: "Snacks\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/dove.png",
                      title: "Personal\nCare",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/lays.png",
                      title: "Chips\nChocolate",
                    ),
                  ],
                ),
              ),
              sized20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grocery- Top Deals",
                  style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                ),
              ),
              sized20,
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
                  ])),
              sized20,

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

              sized20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fruits & Vegetables",
                    style: TextStyle(color: kBlackColor, fontSize: block * 5, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              sized20,

              Stack(
                children: [
                  Image.asset("assets/postertwo.png"),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          "Sip it up",
                          style: TextStyle(color: Colors.white, fontSize: block * 5, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: block * 6,
                        )
                      ],
                    ),
                  )
                ],
              ),
              sized20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/rin.png",
                      title: "Essentials\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/whitechips.png",
                      title: "Snacks\nItem",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/dove.png",
                      title: "Personal\nCare",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GroceryItemWidget(
                      height: height,
                      width: width,
                      block: block,
                      image: "assets/lays.png",
                      title: "Chips\nChocolate",
                    ),
                  ],
                ),
              ),
              sized20,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Grocery- Top Deals",
                  style: TextStyle(color: Colors.black, fontSize: block * 4, fontWeight: FontWeight.w900),
                ),
              ),
              sized20,
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
                  ])),
              sized20,

              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/img_72.png"), fit: BoxFit.cover),
                  color: Colors.white,
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
                child: Text(
                  "Didn't find\nwhat you\nwere looking for?",
                  style: TextStyle(color: kPrimaryColor.withOpacity(0.5), fontSize: block * 10, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                    hintText: 'Search Here',
                    prefixIcon: Icon(Icons.search)),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                height: height * 0.1,
                width: width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.call,
                      color: kBlackColor,
                      size: block * 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Call for query:",
                          style: TextStyle(color: kBlackColor, fontSize: block * 7),
                        ),
                        Text(
                          "01812-3456789",
                          style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),
            ]),
          ))),
    );
  }
}
