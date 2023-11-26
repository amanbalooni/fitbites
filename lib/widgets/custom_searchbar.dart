import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  CustomSearch({super.key, required this.labelText, this.icon, this.width, this.height});
  final String labelText;
  final IconData? icon;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, size: 15,),
          labelStyle: const TextStyle(color: Colors.blueGrey, fontSize: 12),
          border: OutlineInputBorder(
            // Border style
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            // Border style when focused
            borderSide: const BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.circular(25.0),
          ),
          filled: true, // Fill the background
          fillColor: Colors.transparent, // Background color when filled
          contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 16.0), // Padding
        )
    );
  }
}
