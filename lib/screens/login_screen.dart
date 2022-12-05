import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_and_register1/cubit/cubit.dart';
import 'package:login_and_register1/cubit/state.dart';
import 'package:login_and_register1/modules/buttom.dart';
import 'package:login_and_register1/modules/not_have_account.dart';
import 'package:login_and_register1/modules/title.dart';
import 'package:login_and_register1/modules/description.dart';
import 'package:login_and_register1/modules/text_input.dart';
import 'package:login_and_register1/modules/text_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController(text: "");

  var passwordController = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppCubit.get(context)..createDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            bottom: 20,
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  MainTitle(
                    title: "Login",
                  ),
                  Description(
                    text: "Please login to your account",
                  ),
                  TextInput(
                    label: "Email",
                    controller: emailController,
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
                          controller: passwordController,
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
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 25,
                      top: 20,
                    ),
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        backgroundColor: Colors.blue,
                      ),
                      onLongPress: () => print("long Press==================="),
                      onPressed: _log,
                      child: Text(
                        "login".toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "OR",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(
                          flex: 4,
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
                          flex: 4,
                        ),
                      ],
                    ),
                  ),
                  NotHaveAccount(
                    registerAction: () {
                      //// Navigate to Register Screen...!!!
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _log() {
    bool b = AppCubit.get(context).loginValid(
        email: emailController.value.toString(),
        password: passwordController.value.toString());
    if (b == true) {
      //login to app
      print("sac");
    } else {
      print("nooo");
    }
    b = true;
  }
}
