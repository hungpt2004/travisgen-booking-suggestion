// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Plan _$PlanFromJson(Map<String, dynamic> json) => _Plan(
  name: json['name'] as String,
  type: json['type'] as String,
  date: DateTime.parse(json['date'] as String),
  price: (json['price'] as num).toDouble(),
);

Map<String, dynamic> _$PlanToJson(_Plan instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'date': instance.date.toIso8601String(),
  'price': instance.price,
};
