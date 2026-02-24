import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding.freezed.dart';
part 'onboarding.g.dart';

@freezed
abstract class Onboarding with _$Onboarding {
  const factory Onboarding({required String title, required String description, required String jsonPath}) =
      _Onboarding;

  factory Onboarding.fromJson(Map<String, dynamic> json) => _$OnboardingFromJson(json);
}

final onboardingItems = [
  Onboarding(
    title: 'Lên lịch cực nhanh',
    description:
        'Chỉ cần cho biết gu của bạn , ứng dụng sẽ tự động sắp xếp một hành trình hoàn hảo trong nháy mắt, giúp bạn tiết kiệm tối đa thời gian',
    jsonPath: Assets.images.mangden.path,
  ),
  Onboarding(
    title: 'Plan with Ease',
    description: 'Organize every detail of your trip effortlessly. From booking to packing — we\'ve got you covered.',
    jsonPath: Assets.images.hanoi.path,
  ),
];
