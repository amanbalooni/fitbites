import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_textfield.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0XffFFBD4D)),
          ),
          Container(child: child!),
        ],
      ),
    );
  }
}
