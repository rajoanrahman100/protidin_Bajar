import 'package:customer_ui/HomePage/address_and_payment/address_details.dart';
import 'package:customer_ui/components/size_config.dart';
import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
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
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cart Details",
                style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.w400),
              ),
              sized20,
              CartItemWidget(
                width: width,
                block: block,
                height: height,
                image: "assets/lays.png",
                productName: "Lays Premium Chips Orange Flavor- 65g",
                actualPrice: "BDT 130",
                discountPrice: "BDT 110",
              ),
              sized20,
              CartItemWidget(
                width: width,
                block: block,
                height: height,
                image: "assets/oil.png",
                productName: "Aci Pure 100% Healthy Soyabin Oil - 5 litre",
                actualPrice: "BDT 650",
                discountPrice: "BDT 590",
              ),
              sized20,
              Container(
                width: width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(color: Colors.red[50], borderRadius: BorderRadius.circular(5.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.local_offer_outlined,
                      color: Colors.green,
                      size: block * 10,
                    ),
                    width10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Congratulations! your order is adjusted with BDT 96 from your protidin wallet",
                            style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                          ),
                          sized30,
                          Text(
                            "Adjusted BDT 96",
                            style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                          ),
                          sized5,
                          Text(
                            "Wallet balance after adjustment: BDT 4,2345",
                            style:
                                TextStyle(color: kBlackColor.withOpacity(0.5), fontSize: block * 4, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              sized20,
              Text(
                "You may also like",
                style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.w500),
              ),
              sized20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SuggestedItems(
                      width: width,
                      block: block,
                      image: "assets/oil.png",
                      name: "ACI Soyabean Oil",
                      discountP: "20% Off",
                      unit: "5 Litre",
                      price: "700",
                    ),
                    SuggestedItems(
                      width: width,
                      block: block,
                      image: "assets/dove.png",
                      name: "Dove Skin Lotion",
                      discountP: "10% Off",
                      unit: "250g",
                      price: "300",
                    ),
                    SuggestedItems(
                      width: width,
                      block: block,
                      image: "assets/lays.png",
                      name: "Lays Orange Flavour Chip",
                      discountP: "5% Off",
                      unit: "20g",
                      price: "30",
                    )
                  ],
                ),
              ),
              sized20,
              Divider(color: kBlackColor,),
              sized20,
              Text(
                "Order Summary",
                style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.w400),
              ),
              sized20,
              Row(
                children: [
                  Icon(Icons.qr_code_outlined,color: kBlackColor,size: block*4,),
                  width10,
                  Text(
                    "MRP (2 Products)",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    " %",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                  ),                  width10,
                  Text(
                    "Applicable VAT,TAX",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              sized20,
              Container(
                height: height*0.04,
                width: width,
                color: Colors.red[50],
              ),
              sized20,
              Container(
                //height: height*0.1,
                width: width,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(color: kPrimaryColor)
                ),
                child: Column(
                  children: [
                    sized10,
                    Row(
                      children: [
                        Icon(Icons.price_change,color: kBlackColor,size: block*4,),
                        width10,
                        Text(
                          "Protidin Discount",
                          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    sized10,
                    Row(
                      children: [
                        Icon(Icons.money,color: kBlackColor,size: block*4,),
                        width10,
                        Text(
                          "Wallet Adjustment",
                          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    sized10,
                    Row(
                      children: [
                        Icon(Icons.delivery_dining,color: kBlackColor,size: block*4,),
                        width10,
                        Text(
                          "Delivery Charge",
                          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    sized10,
                  ],
                ),
              ),
              sized20,
              Container(
                //height: height*0.05,
                width: width,
                padding: EdgeInsets.all(10.0),
                color: Colors.red[50],
                alignment: Alignment.centerRight,
                child: Text(
                  "BDT 770.00",
                  style: TextStyle(color: kBlackColor, fontSize: block * 7, fontWeight: FontWeight.bold),
                ),
              ),
              sized20,
              Row(
                children: [
                  Icon(Icons.money,color: kBlackColor,size: block*4,),
                  width10,
                  Text(
                    "Cash back received (Added to wallet)",
                    style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              sized20,
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddressDetails()),
                  );
                },
                child: Container(
                  //height: height*0.05,
                  width: width,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15.0),
                  color: kPrimaryColor,
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment method & Address",
                        style: TextStyle(color: kWhiteColor, fontSize: block * 4, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp,color: kWhiteColor,size: block*4,)
                    ],
                  ),
                ),
              ),
              sized20,
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestedItems extends StatelessWidget {
  const SuggestedItems({
    Key? key,
    required this.width,
    required this.block,
    required this.image,
    required this.price,
    required this.discountP,
    required this.name,
    required this.unit,
  }) : super(key: key);

  final double width;
  final double block;
  final String image;
  final String price;
  final String discountP;
  final String name;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //height: height * 0.02,
            margin: EdgeInsets.only(top: 10),
            width: width * 0.15,
            decoration: BoxDecoration(color: Colors.green),
            child: Center(
              child: Text(
                discountP,
                style: TextStyle(color: Colors.white, fontSize: block * 3, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Stack(
              children: [
                Image.asset(image),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(

            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sized5,
                Text(
                  name,
                  style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                ),
                Text(
                  unit,
                  style: TextStyle(color: kBlackColor.withOpacity(0.4), fontSize: block * 4, fontWeight: FontWeight.w400),
                ),
                sized5,
                Text(
                  price,
                  style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    Key? key,
    required this.width,
    required this.block,
    required this.height,
    this.image,
    this.productName,
    this.off,
    this.actualPrice,
    this.discountPrice,
  }) : super(key: key);

  final double width;
  final double block;
  final double height;
  final String? image;
  final String? productName;
  final String? off;
  final String? actualPrice;
  final String? discountPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //height: height * 0.15,
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Image.asset(image!),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      productName!,
                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w500),
                      maxLines: 2,
                    ),
                    sized5,
                    Container(
                      height: height * 0.02,
                      margin: EdgeInsets.only(top: 10),
                      width: width * 0.15,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Center(
                        child: Text(
                          "$off Off",
                          style: TextStyle(color: Colors.white, fontSize: block * 3, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    sized5,
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              actualPrice!,
                              style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: block * 4,
                                  fontWeight: FontWeight.w300,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(discountPrice!,
                                style: TextStyle(color: kBlackColor, fontSize: block * 4.5, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        sized10,
        Divider(
          color: kBlackColor,
          thickness: 0.3,
        )
      ],
    );
  }
}
