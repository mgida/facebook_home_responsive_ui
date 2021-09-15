import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextDecoration decoration;

  CustomText(
      {required this.title,
      this.color = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14,
      this.decoration = TextDecoration.none});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          decoration: decoration),
    );
  }
}
