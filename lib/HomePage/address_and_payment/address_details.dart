import 'package:customer_ui/HomePage/address_and_payment/sucess_payments.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

import 'delivery_slot.dart';

class AddressDetails extends StatefulWidget {
  const AddressDetails({Key? key}) : super(key: key);

  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {

  var cashOn="Cash On Delivery";
  var bkash="BKash";
  var nogod="Nogod";
  var master="Master Card";
  var visa="Visa Card";

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
          "Cart",
          style: TextStyle(color: kBlackColor, fontSize: block * 4),
        ),
        iconTheme: IconThemeData(color: kBlackColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deliver to",
                style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.w500),
              ),
              sized20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.red,
                  ),
                  width10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 Purana Paltan, Near Segunbagicha Bazar, Dhaka-100",
                          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "Contact: 01812-345678",
                          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                        ),
                        sized10,
                        Text(
                          "+ Add delivery contact",
                          style: TextStyle(color: Colors.green, fontSize: block * 4, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              sized20,
              Container(
                  //height: height*0.05,
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  color: Colors.red[50],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DeliverySlotWidget(width: width, block: block),
                      sized20,
                      Container(
                        width: width,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: kWhiteColor),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              "Payment method",
                              style: TextStyle(color: kBlackColor, fontSize: block * 6, fontWeight: FontWeight.w500),
                            ),
                            sized20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/cash.png"),
                                    width20,
                                    Text(
                                      "Cash on Delivery",
                                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Radio(
                                  value: 'Cash',
                                  activeColor: kBlackColor,
                                  groupValue: cashOn,
                                  onChanged: (value) {
                                    setState(() {
                                      cashOn=value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            sized20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/bkash.png"),
                                    width20,
                                    Text(
                                      "bKash",
                                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Radio(
                                  value: 'b',
                                  activeColor: kBlackColor,
                                  groupValue: bkash,
                                  onChanged: (value) {
                                    setState(() {
                                      bkash=value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            sized20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/nogod.png"),
                                    width20,
                                    Text(
                                      "Nogod",
                                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Radio(
                                  value: 'n',
                                  activeColor: kBlackColor,
                                  groupValue: nogod,
                                  onChanged: (value) {
                                    setState(() {
                                      nogod=value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            sized20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/master.png"),
                                    width20,
                                    Text(
                                      "Mastercard",
                                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Radio(
                                  value: 'm',
                                  activeColor: kBlackColor,
                                  groupValue: master,
                                  onChanged: (value) {
                                    setState(() {
                                      master=value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),
                            sized20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/visa.png"),
                                    width20,
                                    Text(
                                      "Visa",
                                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Radio(
                                  value: 'v',
                                  activeColor: kBlackColor,
                                  groupValue: visa,
                                  onChanged: (value) {
                                    setState(() {
                                      visa=value.toString();
                                    });
                                  },
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                      sized20,
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                        text: "By tapping on 'Place Order', you agree to our ",
                        style: TextStyle(color: kBlackColor, fontSize: block * 3, fontWeight: FontWeight.w400),
                        children:[
                          TextSpan(text: 'Terms & Conditions', style: TextStyle(color: Colors.green, fontSize: block * 3, fontWeight: FontWeight.w400)),
                        ],
                      ),
                      ),
                      sized20,
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPayment()));

                        },
                        child: Container(
                          width: width,
                          height: height*0.08,
                          color: kPrimaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "BDT 707.00",
                                style: TextStyle(color: kWhiteColor, fontSize: block * 6, fontWeight: FontWeight.bold),
                              ),
                              sized5,
                              Text(
                                "Place Order",
                                style: TextStyle(color: kWhiteColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
