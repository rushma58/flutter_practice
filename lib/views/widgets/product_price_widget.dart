import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/fonts.dart';

Widget productPriceWidget(int price, int strikePrice, int? offPercent) {
  return Row(
    children: [
      Text(
        "Rs. $price",
        style: fRedSemiBold22,
      ),
      SizedBox(
        width: 15,
      ),
      Text(
        "Rs. $strikePrice",
        style:
            fDarkGrayRegular16.copyWith(decoration: TextDecoration.lineThrough),
      ),
      SizedBox(
        width: 15,
      ),
      Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(
            color: cBlue,
          ),
          borderRadius: BorderRadius.circular(8),
          color: cBlueLight,
        ),
        child: Text(
          "$offPercent% off",
          style: fDarkGrayRegular16,
        ),
      )
    ],
  );
}
