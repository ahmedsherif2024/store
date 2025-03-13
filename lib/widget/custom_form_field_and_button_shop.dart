import 'package:flutter/material.dart';

class CustomFormFieldAndButtonShop extends StatelessWidget {
  const CustomFormFieldAndButtonShop({super.key, this.icon});
final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Search products..',
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child:  Icon(
           icon,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
