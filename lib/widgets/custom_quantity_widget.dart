import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 0;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: decrementQuantity,
            ),
            SizedBox(
              width: 50,
              child: Text(
                '$quantity',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: incrementQuantity,
            ),
          ],
        ),
      ),
    );
  }
}
