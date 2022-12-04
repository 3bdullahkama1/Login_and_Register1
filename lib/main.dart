// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_and_register1/screens/login_screen.dart';

import 'cubit/cubit.dart';
import 'cubit/state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(loginState())..createDatabase(),
      child: BlocConsumer<AppCubit, loginRegisterState>(
          builder: (BuildContext context, loginRegisterState state) {
            AppCubit cubit = AppCubit.get(context);
            return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
        );
        
      }, listener: (BuildContext context, loginRegisterState state) {
        if (state is registerState) {
          //Navigator.pop(context);
        }        
      }),
    );
  }
}
