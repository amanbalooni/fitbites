import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import 'confirmpassword_screen.dart';

class PasswordConfirmation extends StatelessWidget {
  const PasswordConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset('assets/images/email-open.png'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Check your Email',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'We have sent a password recover instructions to your email.',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomPasswordButton(
                    width: 150,
                    height: 50,
                    color: Color(0xffDF2100),
                    borderRadius: 5,
                    text: 'Open Email app',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmPasswordScreen()),
                        );
                      },
                      child: const Text(
                        'Skip\, I\'ll confirm later',
                        style: TextStyle(
                          color: Color(0xffDF2100),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'Did not receive the email? Check your span folder\, or try another email', textAlign: TextAlign.center,),
              )
            ],
          ),
        ],
      ),
    );
  }
}
