import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/customCardDesign.dart';
import '../widgets/customHome_courseContainer.dart';

class HomeScreen extends StatefulWidget {
  static const String name = '/home-screen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 56,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/silent_moon.png',
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Good Morning, Afsar',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F414E)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We Wish you have a good day',
                    style: TextStyle(fontSize: 20, color: Color(0xFFA1A4B2)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Home_course_container(
                          durationColor: 0xFFEBEAEC,
                          buttonColor: 0xFFEBEAEC,
                          buttonTextColor: 0xFF3F414E,
                          backgroundColor: 0xFF8E97FD,
                          imgPath: 'assets/images/basic_course_image.png',
                          durationTime: '3-10 MIN',
                          textTitle: 'Basic',
                          textSubTitle: 'Course',
                          textSubTitleColor: 0xFFFFECCC,
                          textTitleColor: 0xFFF7E8D0,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width *
                            0.05, // screen এর 5% gap
                      ),
                      Flexible(
                        flex: 1,
                        child: Home_course_container(
                          durationColor: 0xFF524F53,
                          buttonColor: 0xFF3F414E,
                          buttonTextColor: 0xFFFEFFFE,
                          backgroundColor: 0xFFFFC97E,
                          imgPath: 'assets/images/relaxation_image.png',
                          durationTime: '3-10 MIN',
                          textTitle: 'Relaxation',
                          textSubTitle: 'Music',
                          textSubTitleColor: 0xFF524F53,
                          textTitleColor: 0xFF3F414E,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/daily_thought.png',
                      width: 374,
                      height: 95,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Recomended for you',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xFF3F414E),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 250, // যতটুকু লাগবে
              child: ListView.separated(
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(width: 15),
                itemBuilder: (context, index) {
                  return Home_recomended_container(
                    imgPath: 'assets/images/MaskGroup.png',
                    title: 'Focus',
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

