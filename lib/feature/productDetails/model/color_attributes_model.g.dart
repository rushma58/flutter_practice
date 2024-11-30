// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_attributes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ColorAttributesModel _$ColorAttributesModelFromJson(
        Map<String, dynamic> json) =>
    ColorAttributesModel(
      isTwin: json['isTwin'] as bool?,
      name: json['name'] as String?,
      colorValue: (json['colorValue'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ColorAttributesModelToJson(
        ColorAttributesModel instance) =>
    <String, dynamic>{
      'isTwin': instance.isTwin,
      'name': instance.name,
      'colorValue': instance.colorValue,
    };
