import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import '../../widgets/custom_carousel.dart';
import '../../widgets/custom_gallery/custom_gallery.dart';
import '../../widgets/custom_searchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
        extendBodyBehindAppBar: true,
        body: Stack(children: [
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
              // Fancy Divider
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 15,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0, left: 10, right: 10),
                    child: Text(
                      "TRENDING DISCOUNTS!",
                      style: TextStyle(color: Color(0xffaa8822), fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: 5,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(
                        endIndent: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const CustomCarouselWidget(image: 'assets/images/coupon.jpg',),
              const SizedBox(
                height: 25,
              ),
              // Fancy Divider
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 15,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0, left: 10, right: 10),
                    child: Text(
                      "WHAT'S ON YOUR MIND?",
                      style: TextStyle(color: Color(0xffaa8822), fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: 5,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(
                        endIndent: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 220,
                  child: ImageCustomWidget(),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      left: 15,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0, left: 10, right: 10),
                    child: Text(
                      "TRENDING RESTAURANTS",
                      style: TextStyle(color: Color(0xffaa8822), fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2,
                      right: 5,
                    ),
                    child: SizedBox(
                      width: 85,
                      child: Divider(
                        endIndent: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ]
        )
    );
  }
}

/// Section Widget Image Gallery

Widget _buildCustomWidget(BuildContext context) {
  return SizedBox(
    height: 300,
    child: ListView.separated(
      padding: const EdgeInsets.only(left: 20),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (
        context,
        index,
      ) {
        return const SizedBox(
          width: 10,
        );
      },
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) {
        var list = {
          "assets/images/plate-1.jpg": "Italian",
          "assets/images/plate-2.jpg": "Pizza",
          "assets/images/plate-3.jpg": "Chinese",
          "assets/images/plate-4.jpg": "Mexican",
          "assets/images/plate-5.jpg": "French",
          "assets/images/plate-6.jpg": "Fried Rice",
          "assets/images/plate-7.jpg": "Indian",
          "assets/images/plate-8.jpg": "Salad",
        };
        return CustomGalleryWidget(
          image: list.keys.elementAt(index),
          text: list.values.elementAt(index),
        );
      },
    ),
  );
}

class ImageCustomWidget extends StatelessWidget {
  const ImageCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 0.0,
        mainAxisSpacing: 20.0,
        mainAxisExtent: 100.0// Number of columns
      ),
      itemCount: 8,
      padding: const EdgeInsets.all(0),
      itemBuilder: (BuildContext context, int index) {
        var list = {
          "assets/images/plate-1.jpg": "Italian",
          "assets/images/plate-2.jpg": "Pizza",
          "assets/images/plate-3.jpg": "Chinese",
          "assets/images/plate-4.jpg": "Mexican",
          "assets/images/plate-5.jpg": "French",
          "assets/images/plate-6.jpg": "Fried Rice",
          "assets/images/plate-7.jpg": "Indian",
          "assets/images/plate-8.jpg": "Salad",
        };
        return CustomGalleryWidget(
          image: list.keys.elementAt(index),
          text: list.values.elementAt(index),
        );
      },
    );
  }
}
