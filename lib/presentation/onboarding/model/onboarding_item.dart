import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_item.freezed.dart';

@freezed
abstract class OnboardingItem with _$OnboardingItem {
  const factory OnboardingItem({
    required String titleKey,
    required String descKey,
    required String tag,
    required Color accentColor,
    required String imagePath,
  }) = _OnboardingItem;
}

final onboardingItems = [
  OnboardingItem(
    titleKey: 'onboarding.page1_title',
    descKey: 'onboarding.page1_desc',
    tag: 'Lên lịch nhanh chóng',
    accentColor: AppColor.secondaryDeepYellow,
    imagePath: Assets.images.mangden.path,
  ),
  OnboardingItem(
    titleKey: 'onboarding.page2_title',
    descKey: 'onboarding.page2_desc',
    tag: 'Khám phá không giới hạn',
    accentColor: AppColor.primaryDeepBlue,
    imagePath: Assets.images.hanoi.path,
  ),
];
