import 'package:flutter/material.dart';
class Home_course_container extends StatelessWidget {
  final String imgPath;
  final String textTitle;
  final String textSubTitle;
  final String durationTime;
  final int textTitleColor;
  final int textSubTitleColor;
  final int backgroundColor;
  final int durationColor;
  final int buttonColor;
  final int buttonTextColor;


  Home_course_container({
    super.key,
    required this.imgPath,
    required this.textSubTitle,
    required this.textTitle,
    required this.durationTime,
    required this.textTitleColor,
    required this.textSubTitleColor,
    required this.backgroundColor,
    required this.durationColor,
    required this.buttonColor,
    required this.buttonTextColor,

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 177,
        height: 210,
        decoration: BoxDecoration(
          color: Color(backgroundColor),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                imgPath,
                width: 118,
                height: 92,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textTitle,
                    style: TextStyle(
                        color: Color(textTitleColor),
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    textSubTitle,
                    style: TextStyle(
                        color: Color(textSubTitleColor),
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        durationTime,
                        style: TextStyle(
                            color: Color(durationColor),
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        height: 35,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Color(buttonColor)),
                        child: Center(
                          child: Text(
                            'START',
                            style: TextStyle(
                                color: Color(buttonTextColor),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}