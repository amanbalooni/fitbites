import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  // Sample data in a list of maps
  final List<Map<String, dynamic>> productList = [
    {
      'title': 'Product 1',
      'imageURL': 'https://via.placeholder.com/150',
      'price': 50.0,
      'discount': 10.0,
    },
    {
      'title': 'Product 2',
      'imageURL': 'https://via.placeholder.com/150',
      'price': 80.0,
      'discount': 15.0,
    },
    // Add more products here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height, // Set a finite height
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (BuildContext context, int index) {
              final product = productList[index];
              return GestureDetector(
                onTap: () {
                  // Handle card click
                  // You can navigate to a new screen or perform an action here
                  print('Card ${product['title']} clicked');
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          product['imageURL'],
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          product['title'],
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Price: \$${product['price'].toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[800],
                              ),
                            ),
                            Text(
                              'Discount: ${product['discount'].toStringAsFixed(0)}%',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
  }
}
