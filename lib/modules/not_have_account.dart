import 'package:flutter/material.dart';
import 'package:login_and_register1/modules/text_button.dart';
import 'package:login_and_register1/modules/text_input.dart';

class NotHaveAccount extends StatelessWidget {
  String textMessage;
  Color textColor;
  double textFontSize;
  String registerMessage;
  Color registerColor;
  double registerFontSize;

  Function registerAction;

  NotHaveAccount({
    super.key,
    this.textMessage = "Don't have an account?",
    this.textColor = Colors.grey,
    this.textFontSize = 15,
    this.registerMessage = "Register",
    this.registerColor = Colors.blue,
    this.registerFontSize = 15,
    required this.registerAction,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textMessage,
          style: TextStyle(
            color: textColor,
            fontSize: textFontSize,
          ),
        ),
        Text_Button(
          text: registerMessage,
          action: registerAction,
          color: registerColor,
          fontSize: registerFontSize,
        ),
      ],
    );
  }
}
