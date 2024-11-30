import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget carouselSliderWidget(List<String> imageList, BuildContext context) {
  return CarouselSlider(
    options: CarouselOptions(
      autoPlay: false,
      // enableInfiniteScroll: false,
    ),
    items: imageList
        .map(
          (item) => Center(
            child: Image.network(
              item,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        )
        .toList(),
  );
}
