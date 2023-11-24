import 'package:fitbites/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XffFFBD4D),
        elevation: 0,
      ),
      body: CustomScaffold(
          child: Column(

        children: [
          Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: Text(
                    'Let\'s Get Started!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'We have sent a password recover instructions to your email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                ),
              ),
              SizedBox(height: 15,),
              CustomTextFiled(labelText: 'Name', icon: Icons.person,),
              SizedBox(height: 15,),
              CustomTextFiled(labelText: 'Email ID', icon: Icons.email,),
              SizedBox(height: 15,),
              CustomTextFiled(labelText: 'Phone', icon: Icons.phone,),
              SizedBox(height: 15,),
              CustomTextFiled(labelText: 'Password', icon: Icons.password,),
              SizedBox(height: 20,),
              CustomPasswordButton(
                width: 180,
                height: 50,
                color: Colors.red,
                borderRadius: 5,
                text: 'Create Account',
              ),
              SizedBox(height: 15,),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: const Text(
                    'Alreday have an account? Login here',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
          ),

        ],
      )),
    );
  }
}
