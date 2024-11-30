import 'package:flutter/material.dart';
import 'package:flutter_practice/feature/productDetails/model/color_variant_model.dart';

import '../../core/constant/color.dart';

Widget colorAttributeWidget(
  List<ColorVariantsModel> colorList,
  int selectedIndex,
  Function(int) onColorSelected,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 8),
    child: Row(
      children: colorList.asMap().entries.map((entry) {
        final index = entry.key;
        final color = entry.value;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: GestureDetector(
            onTap: () => onColorSelected(index),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selectedIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 12,
                backgroundColor:
                    hexToColor(color.color?.colorValue?.first ?? "FFFFFF"),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
