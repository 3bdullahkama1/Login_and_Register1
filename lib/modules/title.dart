import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  String title;
  Color color;
  double fontSize;
  EdgeInsets padding;

  MainTitle({
    super.key,
    required this.title,
    this.color = Colors.blue,
    this.fontSize = 45,
    this.padding = const EdgeInsets.only(
      bottom: 15,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
