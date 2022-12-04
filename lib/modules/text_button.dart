// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

// ignore: camel_case_types
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
