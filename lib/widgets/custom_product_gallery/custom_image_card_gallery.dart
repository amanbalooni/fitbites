import 'package:fitbites/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../tags.dart';

class ImageCardGallery extends StatelessWidget {
  const ImageCardGallery({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> productList = [
      {
        'title': 'Theos - English Bakery',
        'imageURL': 'assets/images/food-item-1.webp',
        'price': 50.0,
        'discount': 10.0,
      },
      {
        'title': 'Burger King',
        'imageURL': 'assets/images/food-item-2.jpeg',
        'price': 80.0,
        'discount': 15.0,
      },
      {
        'title': 'Theobroma',
        'imageURL': 'assets/images/food-item-3.jpeg',
        'price': 90.0,
        'discount': 17.0,
      },
      {
        'title': 'Punjabi Grill',
        'imageURL': 'assets/images/food-item-4.jpeg',
        'price': 90.0,
        'discount': 17.0,
      },
      // Add more products here...
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productList.length,
      itemBuilder: (BuildContext context, int index) {
        final product = productList[index];
        return GestureDetector(
          onTap: () {
            // Handle card click
            // You can navigate to a new screen or perform an action here
            if (kDebugMode) {
              print('Card ${product['title']} clicked');
            }
          },
          child: Card(
            margin: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage(
                            product['imageURL'],
                          ),
                          fit: BoxFit.cover,
                        )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CustomTagWidget(
                              icon: FluentSystemIcons.ic_fluent_location_filled,
                              text: 'Sector 62',
                              width: 100,
                              height: 30,
                              borderRadius: 20,
                              color: Colors.black12,
                            ),
                          ),
                          
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(FluentSystemIcons.ic_fluent_arrow_trending_filled, color: Colors.white,),
                          )
                        ],
                      )
                  ),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                  //   child:  Image.asset(
                  //     product['imageURL'],
                  //     height: 180,
                  //     width: double.infinity,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
