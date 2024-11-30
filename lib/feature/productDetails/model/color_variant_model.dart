import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_practice/feature/productDetails/model/color_attributes_model.dart';

part 'color_variant_model.g.dart';

@JsonSerializable()
class ColorVariantsModel {
  ColorAttributesModel? color;
  int? price;
  int? rewardPoint;
  int? strikePrice;
  int? offPercent;
  int? minOrder;
  int? maxOrder;
  bool? status;
  List<String>? images;
  String? productCode;

  ColorVariantsModel({
    this.color,
    this.price,
    this.rewardPoint,
    this.strikePrice,
    this.offPercent,
    this.minOrder,
    this.maxOrder,
    this.status,
    this.images,
    this.productCode,
  });

  factory ColorVariantsModel.fromJson(Map<String, dynamic> json) =>
      _$ColorVariantsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ColorVariantsModelToJson(this);
}
