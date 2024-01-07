import 'package:fitbites/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartQuantityWidget extends StatefulWidget {
  const CartQuantityWidget({super.key});

  @override
  State<CartQuantityWidget> createState() => _CartQuantityWidgetState();
}

class _CartQuantityWidgetState extends State<CartQuantityWidget> {
  int quantity = 2;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(() {
        quantity--;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 30,height: 30,
              decoration: BoxDecoration(
                color: ThemeColors.yellowColor,
                borderRadius: BorderRadius.circular(25)
              ),
              child: IconButton(
                icon: Icon(Icons.remove, size: 12, color: Colors.white,),
                onPressed: decrementQuantity,
              ),
            ),
            SizedBox(
              width: 30,
              child: Text(
                '$quantity',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
            Container(
              width: 30,height: 30,
              decoration: BoxDecoration(
                  color: ThemeColors.yellowColor,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: IconButton(
                icon: Icon(Icons.add, size: 12, color: Colors.white,),
                onPressed: incrementQuantity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
