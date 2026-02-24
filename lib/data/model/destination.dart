import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'destination.freezed.dart';
part 'destination.g.dart';

@freezed
abstract class Destination with _$Destination {
  const factory Destination({required String nameKey, required String descriptionKey, required String url}) =
      _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) => _$DestinationFromJson(json);
}

final destinations = [
  Destination(
    nameKey: LocaleKeys.search_hanoi,
    descriptionKey: LocaleKeys.search_hanoi_desc,
    url: Assets.images.hanoi.path,
  ),
  Destination(
    nameKey: LocaleKeys.search_danang,
    descriptionKey: LocaleKeys.search_danang_desc,
    url: Assets.images.danang.path,
  ),
  Destination(
    nameKey: LocaleKeys.search_hochiminh,
    descriptionKey: LocaleKeys.search_hochiminh_desc,
    url: Assets.images.hochiminh.path,
  ),
];
