import 'package:flutter/cupertino.dart';

import '../theme/colors.dart';

class CustomFoodCategory extends StatelessWidget {
  final Color color;
  const CustomFoodCategory({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width:30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: color, width: 1.0),
        ),
        child: Center(
          child: Container(
            width:10, height: 10,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        )
    );
  }
}
