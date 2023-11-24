import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import 'confirmation_screen.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                Text('Reset Password', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Enter the email associated with your account and we\'ll send an email with instructions to reset your password.', style: TextStyle(fontSize: 14),),
                SizedBox(height: 20,),
                Column(
                  children: [
                    CustomTextFiled(labelText: 'Enter your Email ID',),
                    SizedBox(height: 20,),
                    CustomPasswordButton(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasswordConfirmation()),
                        );
                      },
                      width: double.maxFinite,
                      height: 50,
                      color: Colors.red,
                      borderRadius: 5,
                      text: 'Send Instructions',
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
