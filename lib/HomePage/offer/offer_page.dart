import 'package:customer_ui/HomePage/offer/grocery.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(
          "Offer",
          style: TextStyle(color: kBlackColor, fontSize: block * 4),
        ),
        iconTheme: IconThemeData(color: kBlackColor),
        actions: const [
          Center(
            child: Icon(
              Icons.menu,
              color: kBlackColor,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enjoy upto 80% off on the following items",
                style: TextStyle(color: kBlackColor, fontSize: block * 4),
              ),
              SizedBox(
                height: 50,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: kPrimaryColor,
                  controller: controller,
                  tabs: [
                    tabBarItems(block,"Grocery  ","184"),
                    tabBarItems(block,"99 Shop  ","99"),
                    tabBarItems(block,"Kid Care  ","56"),
                    tabBarItems(block,"Home Cleaning  ",""),
                    tabBarItems(block,"Foods  ",""),

                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: controller,
                  children: [
                    Grocery(),
                    Grocery(),
                    Grocery(),
                    Grocery(),
                    Grocery(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row tabBarItems(double block,String title,String amount) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(color: kBlackColor),
        ),
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: kBlackColor.withOpacity(0.1)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
               amount,
                style: TextStyle(color: kBlackColor.withOpacity(0.3), fontSize: block * 2.5),
              ),
            ),
          ),
        )
      ],
    );
  }
}
