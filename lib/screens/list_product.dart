import 'package:flutter/material.dart';
import 'package:task_app/widget/app_images.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Image.asset(Assets.interior , width: 40,),
            ),
            Text('Interior'),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Image.asset(Assets.technology, width: 40,),
            ),
            Text('Technology'),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Image.asset(Assets.lighting, width: 40,),
            ),
            Text('Lighting'),
          ],
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadiusDirectional.circular(100),
              ),
              child: Image.asset(Assets.furniture, width: 40,),
            ),
            Text('Furniture'),
          ],
        ),
      ],
    );
  }
}