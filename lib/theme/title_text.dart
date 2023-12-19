import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TitleText({super.key, this.color, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
