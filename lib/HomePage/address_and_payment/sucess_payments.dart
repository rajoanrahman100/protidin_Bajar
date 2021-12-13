import 'package:customer_ui/HomePage/address_and_payment/payment_screen.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class SuccessPayment extends StatefulWidget {
  const SuccessPayment({Key? key}) : super(key: key);

  @override
  _SuccessPaymentState createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var width = SizeConfig.screenWidth;
    var height = SizeConfig.screenHeight;
    var block = SizeConfig.block;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: kWhiteColor,
                child: Center(
                  child: Image.asset("assets/sucessp.png"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Payment Successful",
                      style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.w500),
                    ),
                    sized20,
                    Text(
                      "Your payment is successful,your order will arrive to your house soon",
                      style: TextStyle(color: kBlackColor.withOpacity(0.4), fontSize: block * 4, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 100,),
                    MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));

                      },
                      height: height*0.05,
                      minWidth: width,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                      color: kPrimaryColor,
                      child: Text(
                        "Next",
                        style: TextStyle(color: kWhiteColor, fontSize: block * 5, fontWeight: FontWeight.w500),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
