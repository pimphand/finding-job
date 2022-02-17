import 'package:flutter/material.dart';
import 'package:job/pages/auth/login.dart';
import 'package:job/pages/auth/register.dart';
import 'package:job/pages/home/main_home.dart';
import 'package:job/pages/splace_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/register': (context) => Register(),
        '/login': (context) => Login(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
