import 'package:flutter/material.dart';

class CustomSpecialState extends StatelessWidget {
  const CustomSpecialState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .9,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(15),
          border: Border.all(color: Colors.grey)
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get your\nspecial sale\nup to 15%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  style:
                  TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {},
                  child: Text(
                    'Shop now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/524649971a55b2f3a0dae1d537c61098.jpg',
            width: MediaQuery.sizeOf(context).width * .5,
            height: 250,
          ),
        ],
      ),
    );
  }
}
