import 'package:flutter/material.dart';
import 'package:flutter_practice/views/widgets/message_popup.dart';

import '../../core/constant/color.dart';
import '../../core/constant/fonts.dart';

Widget bottomNavigationBar(BuildContext contex) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      ElevatedButton.icon(
        onPressed: () => showMessageDialog(contex),
        label: Text(
          "Chat",
          style: fBlackSemiBold14,
        ),
        icon: Icon(
          Icons.chat,
          color: cBlack,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: cSilver,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(MediaQuery.of(contex).size.width) * 0.3,
          backgroundColor: cRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "Buy Now",
          style: fWhiteSemiBold14,
        ),
      ),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          fixedSize: Size.fromWidth(MediaQuery.of(contex).size.width) * 0.35,
          backgroundColor: cBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          "Add To Cart",
          style: fWhiteSemiBold14,
        ),
      ),
    ],
  );
}
