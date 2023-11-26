import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

void main() {
  runApp(const ImageCarousel());
}

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}
class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;
  final List<String> _images = [
    'https://via.placeholder.com/400x200',
    'https://via.placeholder.com/400x200',
    'https://via.placeholder.com/400x200',
    // Add your image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            CarouselSlider.builder(
              itemCount: _images.length,
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                return Image.network(
                  _images[index],
                  fit: BoxFit.cover,
                );
              },
            ),
            DotsIndicator(
              dotsCount: _images.length,
              position: _currentIndex.toDouble(),
              decorator: DotsDecorator(
                color: Colors.grey, // Inactive dot color
                activeColor: Colors.blue, // Active dot color
                size: Size.square(8.0),
                activeSize: Size(20.0, 8.0),
                spacing: EdgeInsets.all(4.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
