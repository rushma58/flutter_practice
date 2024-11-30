import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_practice/feature/productDetails/model/color_attributes_model.dart';
import 'package:flutter_practice/feature/productDetails/model/color_variant_model.dart';

part 'product_detail_model.g.dart';

@JsonSerializable()
class ProductDetailModel {
  String? slug;
  String? title;
  String? ingredient;
  String? howToUse;
  String? description;
  int? price;
  int? rewardPoint;
  int? commissionPercentage;
  int? strikePrice;
  int? offPercent;
  int? minOrder;
  int? maxOrder;
  bool? status;
  List<String>? images;
  List<ColorAttributesModel>? colorAttributes;
  String? variantType;
  List<ColorVariantsModel>? colorVariants;
  int? ratings;
  int? totalRatings;
  int? ratedBy;

  ProductDetailModel({
    this.slug,
    this.title,
    this.ingredient,
    this.howToUse,
    this.description,
    this.price,
    this.rewardPoint,
    this.commissionPercentage,
    this.strikePrice,
    this.offPercent,
    this.minOrder,
    this.maxOrder,
    this.status,
    this.images,
    this.colorAttributes,
    this.colorVariants,
    this.variantType,
    this.ratedBy,
    this.ratings,
    this.totalRatings,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailModelToJson(this);
}
