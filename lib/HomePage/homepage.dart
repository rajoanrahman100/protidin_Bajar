import 'package:customer_ui/HomePage/cart/cart_details.dart';
import 'package:customer_ui/HomePage/drawer_class.dart';
import 'package:customer_ui/HomePage/grocer_offer/grocery_offer_page.dart';
import 'package:customer_ui/HomePage/offer/offer_page.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

import 'gorcery_item_widget.dart';
import 'home_screen/category_home_screen.dart';
import 'home_screen/profile_screem.dart';
import 'item_widget.dart';
import 'offer_widget.dart';

class Homepage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  int selectIndex=0;
  PageController pageController=PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;



    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.shopping_cart_rounded),
          backgroundColor: kPrimaryColor,
          onPressed: () {
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CartDetails()));

            });
          },
        ),

          body: PageView(
            controller: pageController,
            children: [
              CategoryHomeScreen(),
              ProfileScreen()
            ],
          ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          currentIndex: selectIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
      ),
    );
  }

  void onTap(index){
    setState(() {
      selectIndex=index;
    });
    pageController.jumpToPage(index);
  }
}
