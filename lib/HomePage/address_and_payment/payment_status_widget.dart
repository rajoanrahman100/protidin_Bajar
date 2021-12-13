import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class PaymentStatusWidget extends StatelessWidget {
  const PaymentStatusWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.block,
  }) : super(key: key);

  final double height;
  final double width;
  final double block;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: kPrimaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sized20,
          Icon(Icons.check_circle_outline,size: block*18,color: kWhiteColor,),
          sized20,
          Text(
            "Your ordered has been confirmed",
            style: TextStyle(color: kWhiteColor, fontSize: block * 6, fontWeight: FontWeight.bold),
          ),
          sized20,
          Text(
            "Order No# PO129344",
            style: TextStyle(color: kWhiteColor, fontSize: block * 6, fontWeight: FontWeight.w400),
          ),
          sized20,
          Container(
            height: height*0.04,
            width: width*0.4,
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(20.0)
            ),
            child: Center(
              child: Text(
                "Track Order",
                style: TextStyle(color: kPrimaryColor, fontSize: block * 5, fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
