import 'package:fitbites/theme/colors.dart';
import 'package:fitbites/theme/para_text.dart';
import 'package:fitbites/theme/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_food_category.dart';
import '../../../widgets/custom_product_gallery/custom_image_card_gallery.dart';
import '../../../widgets/custom_quantity_widget.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            // title: Text(product.name),
            centerTitle: true,
            pinned: true,
            backgroundColor: ThemeColors.yellowColor,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                product.imageUrl,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        const CustomFoodCategory(color: ThemeColors.yellowColor,),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.0, color: Colors.black12)),
                              child: Icon(
                                FluentSystemIcons.ic_fluent_heart_regular,
                                size: 15,
                                color: ThemeColors.redColor,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1.0, color: Colors.black12)),
                              child: Icon(
                                FluentSystemIcons
                                    .ic_fluent_share_android_regular,
                                size: 15,
                                color: ThemeColors.redColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        TitleText(
                          text: product.name,
                          size: 20,
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                  5,
                                      (index) => Icon(
                                    Icons.star,
                                    color: ThemeColors.yellowColor,
                                    size: 12,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('98 ratings', style: TextStyle(fontSize: 12),),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    ParaText(
                      text: product.description,
                      size: 50,
                    ),
                    const SizedBox(height: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'INGREDIENTS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ParaText(
                          text: product.ingredients,
                          size: 16,
                          color: ThemeColors.goldColor,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Price: \$${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    // Add other product details here
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.black12.withOpacity(0.1),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10))),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(child: QuantityWidget()),
              SizedBox(width: 8.0,),
              AddToCartButton(
                width: 150,
                height: 50,
                color: Colors.red,
                borderRadius: 5,
                text: 'Add to cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
