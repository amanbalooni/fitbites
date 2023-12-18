import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../../widgets/custom_card.dart';
import '../../../widgets/custom_carousel.dart';
import '../../../widgets/custom_gallery/custom_gallery.dart';
import '../../../widgets/custom_gallery/image_custom_widget.dart';
import '../../../widgets/custom_product_gallery/custom_image_card_gallery.dart';
import '../../../widgets/custom_searchbar.dart';
import '../../../widgets/custom_text_divider.dart';
import '../../../widgets/restaurant_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key,});
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            FluentSystemIcons.ic_fluent_location_filled,
            color: Color(0xffDF2100),
          ),
          title: Transform.translate(
            offset: const Offset(-20, 0),
            child: const Text(
              'Omaxe Twin Towers(Noida, U.P.)',
              style: TextStyle(fontSize: 14),
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xffDF2100),
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
        ),
        extendBodyBehindAppBar: false,
        body: Stack(
            children: [
          //background image
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
           ListView(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: CustomSearch(
                      labelText: 'Dishes, groceries & restaurants',
                      icon: Icons.search,
                    )),
                const SizedBox(
                  height: 25,
                ),
                const CustomTextDivider(text: 'TRENDING DISCOUNTS',),
                const SizedBox(
                  height: 25,
                ),
                const CustomCarouselWidget(
                  image: 'assets/images/coupon.jpg',
                ),
                const SizedBox(
                  height: 25,
                ),
                const CustomTextDivider(text: 'WHATS ON YOUR MIND?',),
                const SizedBox(
                  height: 15,
                ),
                const ImageCustomWidget(),
                const SizedBox(
                  height: 15,
                ),
                const CustomTextDivider(text: 'TRENDING RESTAURANTS',),
                const SizedBox(
                  height: 25,
                ),
                Container(child: const SingleChildScrollView(
                  child: ImageCardGallery(),
                )),
              ],
            ),

        ]));
  }
}


