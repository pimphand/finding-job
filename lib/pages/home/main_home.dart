import 'package:flutter/material.dart';
import 'package:job/pages/home/chat_page.dart';
import 'package:job/pages/home/home_page.dart';
import 'package:job/pages/home/profil_page.dart';
import 'package:job/pages/home/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customButtom() {
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xffF0F0F1),
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(50),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/home.png',
                    width: 19,
                    color: currentIndex == 0
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/chat.png',
                    width: 19,
                    color: currentIndex == 1
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/profil.png',
                    width: 19,
                    color: currentIndex == 2
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 10,
                  ),
                  child: Image.asset(
                    'assets/setting.png',
                    width: 19,
                    color: currentIndex == 3
                        ? Color(0xff4CA6A8)
                        : Color(0xffA8A8AA),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return ProfilPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customButtom(),
      body: body(),
    );
  }
}
