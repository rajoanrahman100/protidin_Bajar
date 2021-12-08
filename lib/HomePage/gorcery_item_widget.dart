import 'package:customer_ui/components/styles.dart';
import 'package:flutter/material.dart';

class GroceryItemWidget extends StatelessWidget {
  const GroceryItemWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.block,
    required this.image,
    required this.title,
  }) : super(key: key);

  final double height;
  final double width;
  final double block;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height*0.13,
          width: width*0.30,
          decoration: BoxDecoration(
              color: Colors.deepOrange[50],
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Center(
            child:Image.asset(image),
          ),
        ),
        sized5,
        Text(
          title,
          style: TextStyle(color: kBlackColor, fontSize: block * 4, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
