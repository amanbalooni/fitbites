import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffDF2100),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Center(child: Text('Login', style: TextStyle(color: Color(0xffffffff)),)),
    );
  }
}

class CustomPasswordButton extends StatelessWidget {
  const CustomPasswordButton({super.key, this.text, this.width, this.height, this.color, this.borderRadius, this.onTap});
  final String? text;
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width!,
        height: height!,
        decoration: BoxDecoration(
          color: color!,
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Center(
          child: Text(text!, style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

