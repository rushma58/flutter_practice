import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_practice/core/constant/fonts.dart';

Widget productDescriptionWidget(String title, String text) {
  return Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        // border: Border.all(
        //   color: cBlack,
        // ),
        ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: fBlackSemiBold16,
        ),
        Html(
          data: text,
          style: {
            "p": Style(
              fontFamily: "Montserrat-Regular",
              fontSize: FontSize(14),
              textAlign: TextAlign.justify,
              margin: Margins.all(0),
              padding: HtmlPaddings.zero,
            ),
            "li": Style(
              fontFamily: "Montserrat-Regular",
              fontSize: FontSize(14),
              textAlign: TextAlign.justify,
              margin: Margins.all(0),
              padding: HtmlPaddings.zero,
            ),
            "div": Style(
              fontFamily: "Montserrat-Regular",
              fontSize: FontSize(14),
              textAlign: TextAlign.justify,
              margin: Margins.all(0),
              padding: HtmlPaddings.zero,
            ),
            "strong": Style(
              fontFamily: "Montserrat-SemiBold",
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            "ul": Style(
              fontFamily: "Montserrat-Regular",
              margin: Margins.all(0),
              padding: HtmlPaddings.only(left: 16),
            ),
            "br": Style(
              height: Height(0),
              margin: Margins.zero,
            ),
          },
        ),
      ],
    ),
  );
}
