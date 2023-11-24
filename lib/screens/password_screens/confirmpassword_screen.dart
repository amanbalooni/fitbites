import 'dart:async';

import 'package:fitbites/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create new password', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Your new password must be different from previous used passwords.', style: TextStyle(fontSize: 14),),
                SizedBox(height: 20,),
                Column(
                  children: [
                    CustomTextFiled(labelText: 'Enter your new password',),
                    SizedBox(height: 20,),
                    CustomTextFiled(labelText: 'Confirm password',),
                    SizedBox(height: 20,),
                    CustomPasswordButton(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedirectionScreen()),
                        );
                      },
                      width: double.maxFinite,
                      height: 50,
                      color: Colors.red,
                      borderRadius: 5,
                      text: 'Reset Password',
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Redirection Screen
class RedirectionScreen extends StatefulWidget{
  @override
  _RedirectionScreenState createState() => _RedirectionScreenState();
}

class _RedirectionScreenState extends State<RedirectionScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
          () =>
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomeScreen(),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/check-confirm.png'),
          SizedBox(height: 20,),
          Center(child: Text('Your Password has been Changed! You are now redirecting to login page.', textAlign: TextAlign.center,))
        ],
      ),
    );
  }
}