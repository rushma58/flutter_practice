import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_practice/feature/productDetails/model/product_detail_model.dart';

part 'product_detail_response.g.dart';

@JsonSerializable()
class ProductDetailResponse {
  String? title;
  String? message;
  ProductDetailModel? data;

  ProductDetailResponse({
    this.title,
    this.data,
    this.message,
  });

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailResponseToJson(this);
}
