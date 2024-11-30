import 'package:json_annotation/json_annotation.dart';

part 'color_attributes_model.g.dart';

@JsonSerializable()
class ColorAttributesModel {
  bool? isTwin;
  String? name;
  List<String>? colorValue;

  ColorAttributesModel({
    this.isTwin,
    this.name,
    this.colorValue,
  });

  factory ColorAttributesModel.fromJson(Map<String, dynamic> json) =>
      _$ColorAttributesModelFromJson(json);

  Map<String, dynamic> toJson() => _$ColorAttributesModelToJson(this);
}
