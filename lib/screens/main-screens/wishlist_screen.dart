import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../theme/colors.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
        centerTitle: true,
      ),
        body: Column(
          children: [
            Expanded(
              child: _buildWidgetWishList(),
            ),
          ],
        ),
    );
  }
}

Widget _buildWidgetWishList (){
  List<Map<String, dynamic>> itemList = [
    {
      "imagePath": "assets/images/plate-1.jpg",
      "title": "Spaghetti Carbonara",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },

    {
      "imagePath": "assets/images/plate-2.jpg",
      "title": "Pasta Fettuccine",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },

    {
      "imagePath": "assets/images/plate-3.jpg",
      "title": "Pesto Sauce",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },

    {
      "imagePath": "assets/images/plate-4.jpg",
      "title": "Tasty Chicken Pizza",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },

    {
      "imagePath": "assets/images/plate-5.jpg",
      "title": "Pasta Fettuccine",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },

    {
      "imagePath": "assets/images/plate-6.jpg",
      "title": "Pasta Fettuccine",
      "category":"Spicy chicken, Rice",
      "price": "\$10.99",
    },
    // Add more items with image paths, titles, and prices as needed
  ];
  return ListView.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index){
        return Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1.0, color: Colors.grey.shade600.withOpacity(0.2)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 80, height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.shade100,
                  image: DecorationImage( image: AssetImage(itemList[index]["imagePath"]),
                    fit: BoxFit.cover,),
                ),
              ),
              const SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemList[index]["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(height: 8,),
                  Text(itemList[index]["category"], style: TextStyle(fontSize: 10, color: Colors.grey),),
                  SizedBox(height: 8,),
                  Text(itemList[index]["price"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 30, height: 30,
                        decoration: BoxDecoration(
                          color: ThemeColors.redColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Icon(FluentSystemIcons.ic_fluent_delete_filled, size: 15, color: Colors.white,),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Icon(Icons.add, size: 14, color: ThemeColors.redColor,),
                        TextButton(onPressed: () {  },
                        child: const Text("Add", style: TextStyle(color: ThemeColors.redColor),)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
  );
}