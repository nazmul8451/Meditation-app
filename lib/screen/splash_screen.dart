import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String name = '/';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8C96FF),
      body: Stack(
        children: [
          // Positioned Cloud

          // Main Content
          Column(
            children: [
              SizedBox(height: 56),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/silent_moon.png',
                  fit: BoxFit.cover,
                  width: 200,
                ),
              ),
              SizedBox(height: 100),
              Text(
                'Hi Afsar, Welcome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFECCC),
                ),
              ),
              Text(
                'to Silent Moon',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFFFECCC),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Explore the app, Find some peace of mind to\nprepare for meditation.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFEBEAEC),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}