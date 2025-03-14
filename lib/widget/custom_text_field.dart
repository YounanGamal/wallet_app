import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.fillColor,
    required this.height,
    required this.width,
    required this.cursorColor,
    this.keyboardType,
    this.onFieldSubmitted,
    this.controller
  });

  final String hintText;
  final Color fillColor;
  final Color cursorColor;
  final double height;
  final double width;
  final TextInputType? keyboardType;
  Function(String)?  onFieldSubmitted;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextFormField(
          onFieldSubmitted:onFieldSubmitted,
          controller: controller,
          cursorColor: cursorColor,
          textAlign: TextAlign.center,
          keyboardType: keyboardType,
          style: TextStyle(color: cursorColor),
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: TextStyle(
              color: cursorColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
