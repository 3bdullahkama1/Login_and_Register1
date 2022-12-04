import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String text;
  Function action;
  Color textColor;
  Color backgroundColor;
  EdgeInsets padding;
  FontWeight fontWeight;
  double fontSize;
  EdgeInsets textPadding;
  Button({
    super.key,
    required this.text,
    required this.action,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blue,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w600,
    this.padding = const EdgeInsets.only(
      bottom: 25,
      top: 20,
    ),
    this.textPadding = const EdgeInsets.symmetric(
      vertical: 20,
    ),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: textPadding,
          backgroundColor: backgroundColor,
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
