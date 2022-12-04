import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_and_register1/modules/buttom.dart';
import 'package:login_and_register1/modules/not_have_account.dart';
import 'package:login_and_register1/modules/title.dart';
import 'package:login_and_register1/modules/description.dart';
import 'package:login_and_register1/modules/text_input.dart';
import 'package:login_and_register1/modules/text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainTitle(
                title: "Login",
              ),
              Description(
                text: "Please login to your account",
              ),
              TextInput(
                label: "Email",
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextInput(
                      label: "Password",
                      padding: const EdgeInsets.only(
                        bottom: 0,
                      ),
                    ),
                    Text_Button(
                      text: "Forget Password?",
                      action: () {},
                    ),
                  ],
                ),
              ),
              Button(
                text: "login",
                action: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "OR",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 20,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.blue,
                      size: 25,
                    ),
                  ),
                  const Spacer(
                    flex: 20,
                  ),
                ],
              ),
              NotHaveAccount(
                registerAction: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
