import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTagWidget extends StatelessWidget {
  CustomTagWidget({
    super.key,
    this.width,
    this.height,
    this.text,
    this.color,
    this.borderRadius,
    this.margin, this.border, this.icon,
  });
  double? width;
  double? height;
  final IconData? icon;
  final String? text;
  final Color? color;
  final double? borderRadius;
  final EdgeInsets? margin;
  final double? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0),
      width: width!,
      height: height!,
      decoration: BoxDecoration(
        color: color!,
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      child: Center(
        child: Row(
          children: [
            Text(
              text!,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            Expanded(child: Container()),
            Icon(icon, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
