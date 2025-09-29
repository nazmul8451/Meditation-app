import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app/screen/log_in_screen.dart';
import 'package:meditation_app/screen/sign_up_screen.dart';

import '../widgets/elevated_button_design.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  static const String name = '/sign-up-sign-in';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  late TapGestureRecognizer _tapRecognizer;

  @override
  void initState() {
    super.initState();
    _tapRecognizer = TapGestureRecognizer()..onTap = onTapSignin_button;
  }

  @override
  void dispose() {
    _tapRecognizer.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top part with stack
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/silent_moon_frame.png',
                    fit: BoxFit.fitWidth,
                    width: double.maxFinite,
                  ),
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56,
                        ),
                        Image.asset(
                          'assets/images/silent_moon.png',
                          width: 200,
                          height: 80,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          'assets/images/girl_with_headphone.png',
                          width: 300,
                        ),
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'We are what we\ndo',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF3F414E),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Thousand of people are usign silent moon\nfor smalls meditation ',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFFA1A4B2),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            CustomElevatedButton(
              onPressed: () {
                Get.toNamed(SignUpScreen.name);
              },
              text: "SIGN UP",
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: 'ALREADY HAVE AN ACCOUNT? ',
                  style: TextStyle(color: Color(0xFF000000)),
                  children: [
                    TextSpan(
                      text: 'LOG IN',
                      style: TextStyle(
                        color: Color(0xFF8E97FD),
                        fontWeight: FontWeight.w400,
                      ),
                      recognizer: _tapRecognizer,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }

  void onTapSignin_button() {
    Get.toNamed(LogInScreen.name);
    print('sign up span Text pressed');
  }
}
