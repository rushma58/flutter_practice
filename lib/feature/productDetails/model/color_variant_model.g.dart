// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorVariantsModel _$ColorVariantsModelFromJson(Map<String, dynamic> json) =>
    ColorVariantsModel(
      color: json['color'] == null
          ? null
          : ColorAttributesModel.fromJson(
              json['color'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      rewardPoint: (json['rewardPoint'] as num?)?.toInt(),
      strikePrice: (json['strikePrice'] as num?)?.toInt(),
      offPercent: (json['offPercent'] as num?)?.toInt(),
      minOrder: (json['minOrder'] as num?)?.toInt(),
      maxOrder: (json['maxOrder'] as num?)?.toInt(),
      status: json['status'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      productCode: json['productCode'] as String?,
    );

Map<String, dynamic> _$ColorVariantsModelToJson(ColorVariantsModel instance) =>
    <String, dynamic>{
      'color': instance.color,
      'price': instance.price,
      'rewardPoint': instance.rewardPoint,
      'strikePrice': instance.strikePrice,
      'offPercent': instance.offPercent,
      'minOrder': instance.minOrder,
      'maxOrder': instance.maxOrder,
      'status': instance.status,
      'images': instance.images,
      'productCode': instance.productCode,
    };
