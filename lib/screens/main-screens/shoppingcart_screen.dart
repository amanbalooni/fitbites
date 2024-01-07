import 'package:fitbites/theme/colors.dart';
import 'package:fitbites/theme/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../../widgets/cart_quantity_widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_coupon_bar.dart';
import '../../widgets/custom_quantity_widget.dart';
class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 16, right: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/plate-1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Fried Rice',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Spicy chicken, Rice',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        '\$12',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: ThemeColors.redColor),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
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
                      const SizedBox(height: 10,),
                      const SizedBox(width:160,
                          height:50,
                          child: CartQuantityWidget()),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            Divider(),
            SizedBox(height: 5,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/plate-1.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot Fried Rice',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Spicy chicken, Rice',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        '\$12',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold, color: ThemeColors.redColor),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
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
                      const SizedBox(height: 10,),
                      const SizedBox(width:160,
                          height:50,
                          child: CartQuantityWidget()),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            CustomSearchBar(),
            SizedBox(height: 30,),
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Subtotal', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('\$24 USD'),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tax & Fees', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('\$4 USD'),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Delivery', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('\$5 USD'),
                  ],
                ),
                SizedBox(height: 10,),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('\$34 USD', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10))),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(child: AddToCartButton(
                width: 150,
                height: 50,
                color: Colors.red,
                borderRadius: 5,
                text: 'Checkout',
              ),)

            ],
          ),
        ),
      ),
    );
  }
}
