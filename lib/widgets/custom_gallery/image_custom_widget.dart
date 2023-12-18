import 'package:flutter/cupertino.dart';

import 'custom_gallery.dart';

class ImageCustomWidget extends StatelessWidget {
  const ImageCustomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 20.0,
          mainAxisExtent: 100.0 // Number of columns
      ),
      itemCount: 8,
      physics: const NeverScrollableScrollPhysics(),
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