import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class ProductItemsWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? block;
  final String? image;
  final String? productName;
  final String? productWeight;
  final String? productOfferPrice;
  final String? productActualPrice;

  ProductItemsWidget({this.height, this.width, this.block,this.image,this.productName,this.productWeight,this.productOfferPrice,this.productActualPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height! * 0.27,
      margin: EdgeInsets.only(left: 10,top: 5, bottom: 5),
      width: width! * 0.45,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: height!*0.02,
              margin: EdgeInsets.only(top: 10),
              width: width!*0.15,
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              child: Center(
                child: Text(
                  "15% Off",
                  style: TextStyle(color: Colors.white, fontSize: block! * 3, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(child: Image.asset(image!)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              productName!,
              style: TextStyle(color: kBlackColor, fontSize: block! * 4, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          sized5,
          Center(
            child: Text(
              productWeight!,
              style: TextStyle(color: Colors.grey.withOpacity(0.9)),
            ),
          ),
          sized5,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(productOfferPrice!, style: TextStyle(color: kBlackColor, fontSize: block! * 5, fontWeight: FontWeight.w500)),
              Text(productActualPrice!,
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: block! * 3,
                      fontWeight: FontWeight.w300,
                      decoration: TextDecoration.lineThrough)),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.white,
                    size: block! * 4,
                  ),
                ),
              )
            ],
          ),
          sized5,
          Container(
            height: height! * 0.03,
            width: width!,

            decoration: BoxDecoration(
              color: Colors.lightGreen[100],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0),bottomRight: Radius.circular(10.0))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.wallet_giftcard,
                  color: Colors.green,
                  size: block! * 5,
                ),
                Expanded(
                    child: Center(
                        child: Text(
                  "Wallet Bonus+ 18 BDT",
                  style: TextStyle(color: Colors.green),
                ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
