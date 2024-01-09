import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../theme/app_constants.dart';
import '../../theme/colors.dart';
import '../../theme/para_text.dart';
import '../../theme/title_text.dart';
import '../custom_button.dart';
import '../custom_food_category.dart';
import '../custom_quantity_widget.dart';
import 'custom_gallery.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class ProductSingle {
  final String name;
  final String imageUrl;
  final String description;

  ProductSingle({
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}

class ImageCustomWidget extends StatelessWidget {
  const ImageCustomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final List<ProductSingle> productList = [
      ProductSingle(
          name: 'Italian',
          imageUrl: AppConstants.italianDishImage,
          description: AppConstants.itallianDishDescription),
      ProductSingle(
          name: 'Pizza',
          imageUrl: AppConstants.pizzaDishImage,
          description: AppConstants.pizzaDishDescription),
      ProductSingle(
          name: 'Chinese',
          imageUrl: AppConstants.chineseDishImage,
          description: AppConstants.chineseDishDescription),
      ProductSingle(
          name: 'Mexican',
          imageUrl: AppConstants.mexicanDishImage,
          description: AppConstants.mexicanDishDescription),
      ProductSingle(
          name: 'French',
          imageUrl: AppConstants.frenchDishImage,
          description: AppConstants.frenchDishDescription),
      ProductSingle(
          name: 'Fried Rice',
          imageUrl: AppConstants.friedDishImage,
          description: AppConstants.friedDishDescription),
      ProductSingle(
          name: 'Indian',
          imageUrl: AppConstants.indianDishImage,
          description: AppConstants.indianDishDescription),
      ProductSingle(
          name: 'Salad',
          imageUrl: AppConstants.saladDishImage,
          description: AppConstants.saladDishDescription),
    ];
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 20.0,
          mainAxisExtent: 100.0 // Number of columns
          ),
      itemCount: productList.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(0),
      itemBuilder: (BuildContext context, int index) {
        final product = productList[index];
        return GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                    height: 550,
                    child: ProductSingleWidget(
                        product: productList[
                            index])); // Custom widget for product details
              },
            );
          },
          child: CustomGalleryWidget(
            image: product.imageUrl,
            text: product.name,
          ),
        );
      },
    );
  }
}

class ProductSingleWidget extends StatelessWidget {
  final ProductSingle product;

  const ProductSingleWidget({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    product.imageUrl,
                  ),
                )),
              ),
              const Column(
                children: [
                  CustomFoodCategory(
                    color: ThemeColors.redColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    child: TitleText(
                      text: product.name,
                      size: 20,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                        border: Border.all(width: 1.0, color: Colors.black12)),
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
                        border: Border.all(width: 1.0, color: Colors.black12)),
                    child: Icon(
                      FluentSystemIcons.ic_fluent_share_android_regular,
                      size: 15,
                      color: ThemeColors.redColor,
                    ),
                  ),
                ],
              ),
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
                  Text(
                    '98 ratings',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ParaText(
                text: product.description,
                size: 50,
              ),
            ],
          ),
        ),
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
              SizedBox(
                width: 8.0,
              ),
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
