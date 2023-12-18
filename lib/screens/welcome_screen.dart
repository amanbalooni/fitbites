import 'package:fitbites/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/custom_textfield.dart';
import 'password_screens/forgetpassword_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  children: [
                    Center(child: SizedBox(width: 100, child: Image.asset('assets/images/logo.png'),)),
                    const Text('Fitbites Food Delivery', style: TextStyle(fontSize: 22, color: Colors.white),),
                    const CustomTextFiled(
                      labelText: 'Email',
                      icon: Icons.email,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextFiled(
                      labelText: 'Password',
                      icon: Icons.password,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomLoginButton(
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordPannel()),
                          );
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                    );
                  },
                  child: const Center(
                    child: Text(
                      'Don\'t have an account Signup here !',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class ForgetPasswordPannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ForgetPasswordScreen();
  }
}