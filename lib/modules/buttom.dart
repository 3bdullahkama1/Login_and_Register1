import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function action;
  Color textColor;
  Color backgroundColor;
  EdgeInsets padding;
  FontWeight fontWeight;
  double fontSize;
  // Button({
  //   super.key,
  //   this.padding = const EdgeInsets.only(
  //     bottom: 15,
  //   ),
  //   this.backgroundColor = Colors.blue,
  //   required this.action,
  //   required this.text,
  //   textColor = Colors.white,
  // });
  Button({
    super.key,
    required this.text,
    required this.action,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w600,
    this.padding = const EdgeInsets.only(
      bottom: 15,
    ),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor,
          ),
        ),
        onPressed: action(),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
