import 'package:flutter/material.dart';
class CustomLog_SignContainer extends StatelessWidget {
  Color textColor;
  Color containerColor;
  IconData icon;
  Color iconColor;
  String text;
  CustomLog_SignContainer({
    super.key,
    required this.textColor,
    required this.containerColor,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Icon(icon,weight: 12,color: iconColor,),SizedBox(width: 12,),
          Text(text,style: TextStyle(color: textColor,fontWeight: FontWeight.w400),)
        ],
      ),
    );
  }
}
