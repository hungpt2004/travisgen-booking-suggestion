import 'package:auto_router_pkg/generated/locale_keys.g.dart';

enum TravelTypeEnum { chill, foodie, photography, sightseeing, shopping }

extension TravelTypeExtension on TravelTypeEnum {
  String get titleKey {
    switch (this) {
      case TravelTypeEnum.chill:
        return LocaleKeys.travel_type_chill;
      case TravelTypeEnum.foodie:
        return LocaleKeys.travel_type_food;
      case TravelTypeEnum.photography:
        return LocaleKeys.travel_type_cultural;
      case TravelTypeEnum.sightseeing:
        return LocaleKeys.travel_type_adventure;
      case TravelTypeEnum.shopping:
        return LocaleKeys.travel_type_nature;
    }
  }
}
