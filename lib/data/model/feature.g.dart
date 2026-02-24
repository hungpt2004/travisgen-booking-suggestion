// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feature _$FeatureFromJson(Map<String, dynamic> json) => _Feature(
  title: json['title'] as String,
  url: json['url'] as String,
  color: const ColorConverter().fromJson((json['color'] as num).toInt()),
);

Map<String, dynamic> _$FeatureToJson(_Feature instance) => <String, dynamic>{
  'title': instance.title,
  'url': instance.url,
  'color': const ColorConverter().toJson(instance.color),
};
