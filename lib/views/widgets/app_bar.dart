import 'package:flutter/material.dart';
import 'package:flutter_practice/core/constant/fonts.dart';

Widget appBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    title: Text(
      "Product Detail",
      style: fBlackSemiBold18,
    ),
  );
}
