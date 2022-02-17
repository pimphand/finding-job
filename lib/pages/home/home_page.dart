import 'package:flutter/material.dart';
import 'package:job/widget/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget header() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  'assets/hamburger.png',
                  width: 44,
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/person.png',
                  width: 44,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget search() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  height: 54,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff6A6A6A),
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search here...',
                      hintTextDirection: TextDirection.ltr,
                      hintStyle: TextStyle(
                        fontSize: 18,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/go_button.png',
                width: 54,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget productTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular Job",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Show All",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff6A6A6A),
            ),
          ),
        ],
      ),
    );
  }

  Widget productWidget() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Row(
              children: [
                Product(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        search(),
        productTitle(),
        productWidget(),
      ],
    );
  }
}
