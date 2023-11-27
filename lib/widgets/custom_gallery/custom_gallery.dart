import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomGalleryWidget extends StatelessWidget {
  const CustomGalleryWidget({super.key, this.image, this.text, this.child,});
  final String? image;
  final String? text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
         width: 80,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.cover,
              )
          ),
        ),
        SizedBox(
          child: Text(
            text!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.black45),
          ),
        ),
      ],
    );
  }
}
