import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;

  const FoodDetailsSlider({
    Key? key,
    required this.slideImage1,
    required this.slideImage2,
    required this.slideImage3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CarouselSlider(
        items: [
          Image.asset(slideImage1, fit: BoxFit.cover),
          Image.asset(slideImage2, fit: BoxFit.cover),
          Image.asset(slideImage3, fit: BoxFit.cover),
        ],
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          scrollPhysics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
