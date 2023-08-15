import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImagesCarousel extends StatelessWidget {
  final List<String> images;

  const ImagesCarousel({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 228,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true, enlargeCenterPage: true, enlargeFactor: 0.1),
        items: images.map(buildCarouselItems).toList(),
      ),
    );
  }

  Builder buildCarouselItems(imageUrl) {
    return Builder(
      builder: (BuildContext context) {
        return Image.network(
          imageUrl,
          fit: BoxFit.fill,
          width: 160,
          height: 140,
        );
      },
    );
  }
}
