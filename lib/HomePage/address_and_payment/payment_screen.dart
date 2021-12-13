import 'package:customer_ui/HomePage/address_and_payment/payment_status_widget.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

import '../drawer_class.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerClass(height: height, width: width, block: block),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text(
            "Payment Screen",
            style: TextStyle(color: kWhiteColor, fontSize: block * 4),
          ),
          iconTheme: IconThemeData(color: kWhiteColor),
          actions: [
            Center(
              child: GestureDetector(
                onTap: (){
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Icon(
                  Icons.menu,
                  color: kWhiteColor,
                ),
              ),
            ),
            width10,
          ],
        ),
        body: Stack(
          children: [
            PaymentStatusWidget(height: height, width: width, block: block),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.55,
                width: width,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PaymentInfoWidget(
                        block: block,
                        icon: Icons.receipt,
                        title: "BDT 707",
                        subTitle: "Total Payable",
                      ),
                      sized30,
                      PaymentInfoWidget(
                        block: block,
                        icon: Icons.money_outlined,
                        title: "Cash On Delivery",
                        subTitle: "Payment method",
                      ),
                      sized30,
                      PaymentInfoWidget(
                        block: block,
                        icon: Icons.location_on_rounded,
                        title: "45, purana paltan, 3rd floor, Dhaka-1100",
                        subTitle: "Delivery Address",
                      ),
                      sized30,
                      PaymentInfoWidget(
                        block: block,
                        icon: Icons.access_time,
                        title: "24 September, 2021, 8 pm",
                        subTitle: "Delivery Date and Time Slot",
                      ),
                      sized30,
                      Center(
                        child: Text(
                          "Thank you for shopping with us",
                          style: TextStyle(color: kPrimaryColor, fontSize: block * 4.5, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class PaymentInfoWidget extends StatelessWidget {
  const PaymentInfoWidget({
    Key? key,
    required this.block,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final double block;
  final IconData icon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: kBlackColor.withOpacity(0.4),
          size: block * 10,
        ),
        width20,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: kBlackColor, fontSize: block * 6, fontWeight: FontWeight.bold),
              ),
              sized5,
              Text(
                subTitle,
                style: TextStyle(color: kBlackColor.withOpacity(0.4), fontSize: block * 4, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
