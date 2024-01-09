import 'package:fitbites/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Promo code',
                border: InputBorder.none,
              ),
            ),
          ),
         TextButton( onPressed: () {  },
         child: Container(
           width: 70,
           height: 35,
           decoration: BoxDecoration(
             color: ThemeColors.redColor,
             borderRadius: BorderRadius.circular(50)
           ),
           child: Center(child: const Text('Apply', style: TextStyle(color: Colors.white),)),
         ))
        ],
      ),
    );
  }
}
