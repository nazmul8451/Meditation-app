import 'package:flutter/material.dart';

class TextFormFieldDesign extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final AutovalidateMode? autovalidateMode;

  TextFormFieldDesign(
      {
        super.key,
      required this.hintText,
      required this.controller,
      this.validator, this.autovalidateMode
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xFFF2F3F7)),
        child: Center(
          child: TextFormField(
            autovalidateMode: autovalidateMode?? AutovalidateMode.disabled,
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0xFF3F414E)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
  }
}
