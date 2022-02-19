import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 160,
      margin: EdgeInsets.only(right: 20, bottom: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff6A6A6A),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 15.09,
                height: 13.79,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Image.asset(
                  "assets/love.png",
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lead Product Manager",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6A6A6A),
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$2500/m",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6A6A6A),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Toronto, Canada",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6A6A6A),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
