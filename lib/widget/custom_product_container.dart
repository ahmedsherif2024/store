import 'package:flutter/material.dart';
import 'package:task_app/widget/app_images.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Image.asset(
            Assets.image1,
            width: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Image.asset(
            Assets.image3,
            width: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Image.asset(
            Assets.image2,
            width: 40,
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          child: Image.asset(
            Assets.image1,
            width: 40,
          ),
        ),
      ],
    );
  }
}