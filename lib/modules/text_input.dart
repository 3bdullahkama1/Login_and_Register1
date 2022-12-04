import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String label;
  Color textColor;
  double fontSize;
  EdgeInsets padding;

  TextInput({
    super.key,
    required this.label,
    this.textColor = const Color.fromRGBO(189, 189, 189, 1),
    this.fontSize = 20,
    this.padding = const EdgeInsets.only(
      bottom: 10,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
