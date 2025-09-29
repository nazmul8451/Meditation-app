import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  String text;
  final VoidCallback onPressed;
   CustomElevatedButton({
    super.key,
     required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.maxFinite,
        height: 60,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF8E97FD)
            ),
            onPressed:onPressed,
            child: Text(text,style: TextStyle(fontSize:14,color:Colors.white ),)),
      ),
    );
  }
}
