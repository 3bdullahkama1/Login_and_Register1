import 'package:flutter/material.dart';

class Text_Button extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  Function action;

  Text_Button({
    super.key,
    required this.text,
    required this.action,
    this.fontSize = 15,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action(),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.blue,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
