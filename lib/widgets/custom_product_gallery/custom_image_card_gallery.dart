import 'package:fitbites/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../screens/main-screens/product-detail/product_detail_card.dart';
import '../tags.dart';

class ImageCardGallery extends StatelessWidget {
  const ImageCardGallery({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Product> productList = [
      Product(
        name: 'Fresh Cream\nPineapple Cake',
        price: 50.0,
        discount: 10.0,
        description: "A fruity delight, our Fresh Cream Pineapple Cake is made by layering a vanilla sponge with fresh dairy cream and our homemade pineapple compote, and finished with slivered almonds. This tropical treat is moist and light, rounding off all the flavours perfectly!",
        imageUrl: 'assets/images/pineapplecake.webp',
        ingredients: 'Vanilla essence, chopped pineapple, almonds, sugar, flour, dairy cream, eggs. Allergens: Gluten, dairy, nuts',
      ),
      Product(
        name: 'Chicken Tikka\nSandwich',
        imageUrl: 'assets/images/chicken-tikka-sandwich.webp',
        price: 80.0,
        discount: 15.0,
        description: 'Succulent pieces of smoky chicken tikka filled in soft multigrain breads, with roasted peppers topped with garlic mayo.',
        ingredients: 'Butter, Wheat Flour, Sesame Seeds, Melon Seeds, Oats, Broken Wheat, Sunflower Oil, Salt, Flax Seeds,  Romaine & Iceberg lettuce, Garlic, Egg, Mustard powder, Sugar, Olive oil, Black pepper powder, Chicken, Vegetables, Yogurt, Ginger, Garlic, Lemon Juice, Red chilly powder, Turmeric powder, Chilly flakes, Mixed spices, Mustard oil, Yeast',
      ),
      Product(
        name: 'Theobroma',
        imageUrl: 'assets/images/food-item-3.jpeg',
        price: 90.0,
        discount: 17.0,
        description: 'This is description',
        ingredients: 'Vanilla essence, chopped pineapple, almonds, sugar, flour, dairy cream, eggs. Allergens: Gluten, dairy, nuts',
      ),
      Product(
        name: 'Punjabi Grill',
        imageUrl: 'assets/images/food-item-4.jpeg',
        price: 90.0,
        discount: 17.0,
        description: 'This is description',
        ingredients: 'Vanilla essence, chopped pineapple, almonds, sugar, flour, dairy cream, eggs. Allergens: Gluten, dairy, nuts',
      ),
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(product: productList[index]),
              ),
            );
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
                              product.imageUrl,
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
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CustomTagWidget(
                              icon: FluentSystemIcons.ic_fluent_location_filled,
                              text: 'Sector 62',
                              width: 110,
                              height: 30,
                              borderRadius: 20,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              FluentSystemIcons.ic_fluent_arrow_trending_filled,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8.0),
                        Text(
                          product.name,
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
                              'Price: \$${product.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[800],
                              ),
                            ),
                            Text(
                              'Discount: ${product.discount.toStringAsFixed(0)}%',
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

class Product {
  final String name;
  final String description;
  final double discount;
  final double price;
  final String imageUrl;
  final String ingredients;
  // Other properties

  Product({
    required this.discount,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.ingredients,
    // Other properties initialization
  });
}


