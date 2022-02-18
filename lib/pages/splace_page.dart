import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              width: 472,
              height: 378,
              child: Image.asset('assets/splash.png'),
            ),
          ),
          Center(
            child: Container(
              height: 23,
            ),
          ),
          Center(
            child: Text(
              'Find a Perfact',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2F2F2F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Text(
              'Job Match',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2F2F2F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              height: 5,
            ),
          ),
          Center(
            child: Text(
              'Finding your dream job is more easire',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xFF2F2F2F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              height: 2,
            ),
          ),
          Center(
            child: Text(
              'and faster with JobHub',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xFF2F2F2F),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: Container(
              height: 40,
            ),
          ),
          Container(
            width: 261,
            height: 54,
            decoration: BoxDecoration(
              color: Color(0xFF4CA6A8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Let’s Get Started',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
