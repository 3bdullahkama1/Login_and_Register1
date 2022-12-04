import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  EdgeInsets padding;

  Description({
    super.key,
    required this.text,
    this.color = Colors.grey,
    this.fontSize = 20,
    this.padding = const EdgeInsets.only(
      bottom: 15,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
