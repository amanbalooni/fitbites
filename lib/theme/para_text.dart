import 'package:flutter/cupertino.dart';

class ParaText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  ParaText({super.key, this.color, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
    );
  }
}
