import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  String title;
  Color color = Colors.blue;
  double fontSize = 40;
  EdgeInsets padding;

  MainTitle({
    super.key,
    required this.title,
    this.color = Colors.blue,
    this.fontSize = 40,
    this.padding = const EdgeInsets.only(
      bottom: 5,
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
