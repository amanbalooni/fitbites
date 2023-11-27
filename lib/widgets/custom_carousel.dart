import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class CustomCarouselWidget extends StatelessWidget {
  const CustomCarouselWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Initialize the CarouselSlider widget here
        CarouselSlider(

          options: CarouselOptions(
            // Customize options here
            height: 150,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: [
            // Add your carousel items here
            Container(
              color: Colors.red,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

