import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Fill your details or continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6A6A6A),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'with social media',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6A6A6A),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget userName() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              height: 54,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE8E8E8),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6A6A6A),
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff6A6A6A),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 24),
              height: 54,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE8E8E8),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/email.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6A6A6A),
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff6A6A6A),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 54,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE8E8E8),
                    offset: Offset(0, 4),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/lock.png',
                      width: 24,
                      height: 26,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff6A6A6A),
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xff6A6A6A),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff6A6A6A),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        margin: EdgeInsets.only(top: 62),
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
          color: Color(0xFF4CA6A8),
          borderRadius: BorderRadius.circular(12),
        ),
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Register',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget text1() {
      return Container(
        margin: EdgeInsets.only(top: 41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/line.png'),
              width: 24,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Or Continue with',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff6A6A6A),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Image(
              image: AssetImage('assets/line.png'),
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget RegisterSocialMedia() {
      return Container(
        margin: EdgeInsets.only(top: 41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/facebook.png',
                width: 60,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/google.png',
                width: 60,
              ),
            ),
          ],
        ),
      );
    }

    Widget text2() {
      return Container(
        margin: EdgeInsets.only(top: 41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already Have Account?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff6A6A6A),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/login'),
              child: Text(
                'Log In',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                userName(),
                emailInput(),
                passwordInput(),
                button(),
                text1(),
                RegisterSocialMedia(),
                text2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
