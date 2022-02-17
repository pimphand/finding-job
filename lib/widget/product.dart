import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 160,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          ),
          Row(
            children: [
              Image.asset(
                'assets/google.png',
                width: 40,
                height: 40,
              ),
              Image.asset(
                'assets/google.png',
                width: 40,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
