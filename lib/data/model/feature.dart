import 'package:auto_router_pkg/common/constants/feature.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feature.freezed.dart';
part 'feature.g.dart';

@freezed
abstract class Feature with _$Feature {
  const factory Feature({required String title, required String url, @ColorConverter() required Color color}) =
      _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) => _$FeatureFromJson(json);
}

final features = [
  Feature(title: FeatureType.weather.title, url: 'ic_weather.svg', color: Colors.blue),
  Feature(title: FeatureType.social.title, url: 'ic_social.svg', color: Colors.green),
  Feature(title: FeatureType.promotion.title, url: 'ic_promotion.svg', color: Colors.orange),
  Feature(title: FeatureType.map.title, url: 'ic_map.svg', color: Colors.red),
];

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color object) => object.value;
}
