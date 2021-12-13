import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class DeliverySlotWidget extends StatelessWidget {
  const DeliverySlotWidget({
    Key? key,
    required this.width,
    required this.block,
  }) : super(key: key);

  final double width;
  final double block;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: kWhiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Preferred Delivery Slot",
            style: TextStyle(color: kBlackColor, fontSize: block * 6, fontWeight: FontWeight.w500),
          ),
          sized20,
          Row(
            children: [
              Expanded(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery date:",
                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                    ),
                    sized10,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),border: Border.all(color: kBlackColor,width: 0.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Today, 23 sept",
                            style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.calendar_today,color: kBlackColor,size: block*4,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              width20,
              Expanded(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Time slot:",
                      style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                    ),
                    sized10,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),border: Border.all(color: kBlackColor,width: 0.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tap to choose",
                            style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.arrow_drop_down_sharp,color: kBlackColor,size: block*4,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
