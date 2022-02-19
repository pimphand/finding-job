import 'package:flutter/material.dart';
import 'package:job/widget/product.dart';
import 'package:job/widget/recentPost.dart';

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
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                suffixIcon: Icon(Icons.search),
              ),
            ),
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
                Product(),
                Product(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget titleRecent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recent Post",
            style: TextStyle(
              fontSize: 23,
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

  Widget recentPosts() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                RecentPost(),
                RecentPost(),
                RecentPost(),
                RecentPost(),
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
        titleRecent(),
        recentPosts(),
      ],
    );
  }
}
