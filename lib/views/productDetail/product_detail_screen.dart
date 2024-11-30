import 'package:flutter/material.dart';
import 'package:flutter_practice/core/constant/fonts.dart';
import 'package:flutter_practice/feature/productDetails/provider/product_detail_provider.dart';
import 'package:flutter_practice/views/widgets/bottom_nav_bar.dart';
import 'package:flutter_practice/views/widgets/carousel_slider_widget.dart';
import 'package:flutter_practice/views/widgets/product_price_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../widgets/app_bar.dart';
import '../widgets/color_attribute_widget.dart';
import '../widgets/product_description_widget.dart';

class ProductDetailScreen extends ConsumerStatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  ConsumerState<ProductDetailScreen> createState() =>
      _ProductDetailScreenState();
}

class _ProductDetailScreenState extends ConsumerState<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final productData = ref.watch(productDetailProvider);
    final selectedColorIndex = ref.watch(selectedColorProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: appBar(),
      ),
      body: productData.when(
        data: (data) {
          final imgList = data?.data?.images ?? [];
          final colorAttributes = data?.data?.colorVariants ?? [];
          int price = colorAttributes.isNotEmpty
              ? (colorAttributes[selectedColorIndex].price ?? 0)
              : (data?.data?.price ?? 0);

          int strikePrice = colorAttributes.isNotEmpty
              ? (colorAttributes[selectedColorIndex].strikePrice ?? 0)
              : (data?.data?.strikePrice ?? 0);

          int offPercent = colorAttributes.isNotEmpty
              ? (colorAttributes[selectedColorIndex].offPercent ?? 0)
              : (data?.data?.offPercent ?? 0);

          String shadeName = colorAttributes.isNotEmpty
              ? (colorAttributes[selectedColorIndex].color?.name ?? "")
              : "";
          return SingleChildScrollView(
            child: Column(
              children: [
                carouselSliderWidget(imgList, context),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data?.data?.title}",
                        style: fBlackSemiBold22,
                      ),
                      Text(
                        "Color ($shadeName)",
                        style: fDarkGrayRegular16,
                      ),
                      productPriceWidget(price, strikePrice, offPercent),
                      colorAttributeWidget(
                        colorAttributes,
                        selectedColorIndex,
                        (index) => ref
                            .read(selectedColorProvider.notifier)
                            .state = index,
                      ),
                      Divider(),
                      productDescriptionWidget(
                          "Product Description", data?.data?.description ?? ""),
                      Divider(),
                      productDescriptionWidget(
                          "Ingredients", data?.data?.ingredient ?? ""),
                      Divider(),
                      productDescriptionWidget(
                          "How To Use?", data?.data?.howToUse ?? ""),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => Container(
          color: Colors.white,
          child: Center(
            child: SpinKitCircle(
              color: Colors.black,
            ),
          ),
        ),
        error: (error, stack) => Center(
          child: Text('Error: $error'),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(context),
    );
  }
}
