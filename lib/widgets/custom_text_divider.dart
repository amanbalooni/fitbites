import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextDivider extends StatelessWidget {
  final String text;
  const CustomTextDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 2,
            left: 15,
          ),
          child: SizedBox(
            width: 85,
            child: Divider(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 0, left: 10, right: 10),
          child: Text(
            text,
            style: TextStyle(color: Color(0xffaa8822), fontSize: 12),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 2,
            right: 5,
          ),
          child: SizedBox(
            width: 85,
            child: Divider(
              endIndent: 1,
            ),
          ),
        ),
      ],
    );
  }
}
