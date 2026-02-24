import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_type.freezed.dart';
part 'travel_type.g.dart';

@freezed
abstract class TravelType with _$TravelType {
  const factory TravelType({required String titleKey, required String url}) = _TravelType;

  factory TravelType.fromJson(Map<String, dynamic> json) => _$TravelTypeFromJson(json);
}

final travelTypes = [
  TravelType(url: Assets.travelType.icCoffee.path, titleKey: LocaleKeys.travel_type_chill),
  TravelType(url: Assets.travelType.icFood.path, titleKey: LocaleKeys.travel_type_food),
  TravelType(url: Assets.travelType.icCamera.path, titleKey: LocaleKeys.travel_type_cultural),
  TravelType(url: Assets.travelType.icTourist.path, titleKey: LocaleKeys.travel_type_adventure),
  TravelType(url: Assets.travelType.icShopping.path, titleKey: LocaleKeys.travel_type_nature),
];
