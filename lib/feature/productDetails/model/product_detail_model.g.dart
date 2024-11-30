// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) =>
    ProductDetailModel(
      slug: json['slug'] as String?,
      title: json['title'] as String?,
      ingredient: json['ingredient'] as String?,
      howToUse: json['howToUse'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toInt(),
      rewardPoint: (json['rewardPoint'] as num?)?.toInt(),
      commissionPercentage: (json['commissionPercentage'] as num?)?.toInt(),
      strikePrice: (json['strikePrice'] as num?)?.toInt(),
      offPercent: (json['offPercent'] as num?)?.toInt(),
      minOrder: (json['minOrder'] as num?)?.toInt(),
      maxOrder: (json['maxOrder'] as num?)?.toInt(),
      status: json['status'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colorAttributes: (json['colorAttributes'] as List<dynamic>?)
          ?.map((e) => ColorAttributesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      colorVariants: (json['colorVariants'] as List<dynamic>?)
          ?.map((e) => ColorVariantsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      variantType: json['variantType'] as String?,
      ratedBy: (json['ratedBy'] as num?)?.toInt(),
      ratings: (json['ratings'] as num?)?.toInt(),
      totalRatings: (json['totalRatings'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductDetailModelToJson(ProductDetailModel instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'ingredient': instance.ingredient,
      'howToUse': instance.howToUse,
      'description': instance.description,
      'price': instance.price,
      'rewardPoint': instance.rewardPoint,
      'commissionPercentage': instance.commissionPercentage,
      'strikePrice': instance.strikePrice,
      'offPercent': instance.offPercent,
      'minOrder': instance.minOrder,
      'maxOrder': instance.maxOrder,
      'status': instance.status,
      'images': instance.images,
      'colorAttributes': instance.colorAttributes,
      'variantType': instance.variantType,
      'colorVariants': instance.colorVariants,
      'ratings': instance.ratings,
      'totalRatings': instance.totalRatings,
      'ratedBy': instance.ratedBy,
    };
