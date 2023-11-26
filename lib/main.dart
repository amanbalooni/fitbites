import 'package:fitbites/screens/bottomnavigatiobar/bottom_navigationbar.dart';
import 'package:fitbites/screens/main-screens/home_screen.dart';
import 'package:fitbites/screens/password_screens/confirmation_screen.dart';
import 'package:fitbites/screens/password_screens/confirmpassword_screen.dart';
import 'package:fitbites/screens/password_screens/forgetpassword_screen.dart';
import 'package:fitbites/screens/signup_screen.dart';
import 'package:fitbites/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitbites',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationWidget(),
    );
  }
}
