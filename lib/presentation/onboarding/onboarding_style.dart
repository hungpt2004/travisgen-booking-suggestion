import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// ThemeExtension for onboarding screens.
/// Access via: `Theme.of(context).extension<OnboardingStyle>()!`
@immutable
class OnboardingStyle extends ThemeExtension<OnboardingStyle> {
  // ── Colors ──────────────────────────────────────────────────
  final Color background;
  final Color primaryColor;
  final Color accentColor;
  final Color indicatorActive;
  final Color indicatorInactive;
  final Color skipColor;
  final Color nextButtonBackground;
  final Color nextButtonForeground;

  // ── Text styles ──────────────────────────────────────────────
  final TextStyle tagStyle;
  final TextStyle titleStyle;
  final TextStyle descriptionStyle;
  final TextStyle skipStyle;
  final TextStyle nextStyle;
  final TextStyle getStartedStyle;

  // ── Decorations ──────────────────────────────────────────────
  final BoxDecoration nextButtonDecoration;
  final BoxDecoration getStartedButtonDecoration;
  final BoxDecoration imagePlaceholderDecoration;

  const OnboardingStyle({
    required this.background,
    required this.primaryColor,
    required this.accentColor,
    required this.indicatorActive,
    required this.indicatorInactive,
    required this.skipColor,
    required this.nextButtonBackground,
    required this.nextButtonForeground,
    required this.tagStyle,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.skipStyle,
    required this.nextStyle,
    required this.getStartedStyle,
    required this.nextButtonDecoration,
    required this.getStartedButtonDecoration,
    required this.imagePlaceholderDecoration,
  });

  factory OnboardingStyle.light() {
    const primary = AppColor.primaryDeepBlue;
    const accent = AppColor.secondaryDeepYellow;
    return OnboardingStyle(
      background: const Color(0xFFF5F7FF),
      primaryColor: primary,
      accentColor: accent,
      indicatorActive: primary,
      indicatorInactive: const Color(0xFFD1D5DB),
      skipColor: AppColor.mediumGrey,
      nextButtonBackground: primary,
      nextButtonForeground: Colors.white,
      tagStyle: Fonts.s24w6.copyWith(letterSpacing: 1.2),
      titleStyle: Fonts.s48w8.copyWith(color: primary, height: 1.2, fontWeight: FontWeight.w700),
      descriptionStyle: Fonts.s28w4.copyWith(color: const Color(0xFF6B7280), height: 1.6),
      skipStyle: Fonts.s28w5.copyWith(color: AppColor.mediumGrey),
      nextStyle: Fonts.s28w6.copyWith(color: Colors.white),
      getStartedStyle: Fonts.s32w4.copyWith(color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 0.5),
      nextButtonDecoration: BoxDecoration(
        color: primary,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.30), blurRadius: 16, offset: const Offset(0, 6))],
      ),
      getStartedButtonDecoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppColor.primaryDeepBlue, Color(0xFF3B2BE8)]),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.35), blurRadius: 20, offset: const Offset(0, 8))],
      ),
      imagePlaceholderDecoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r)),
    );
  }

  factory OnboardingStyle.dark() {
    const primary = Color(0xFF7C6FFF);
    const accent = AppColor.secondaryDeepYellow;
    return OnboardingStyle(
      background: const Color(0xFF1A1A2E),
      primaryColor: primary,
      accentColor: accent,
      indicatorActive: primary,
      indicatorInactive: const Color(0xFF3A3A5C),
      skipColor: const Color(0xFF9CA3AF),
      nextButtonBackground: primary,
      nextButtonForeground: Colors.white,
      tagStyle: Fonts.s24w6.copyWith(letterSpacing: 1.2),
      titleStyle: Fonts.s48w8.copyWith(color: Colors.white, height: 1.2, fontWeight: FontWeight.w700),
      descriptionStyle: Fonts.s28w4.copyWith(color: const Color(0xFF9CA3AF), height: 1.6),
      skipStyle: Fonts.s28w5.copyWith(color: const Color(0xFF9CA3AF)),
      nextStyle: Fonts.s28w6.copyWith(color: Colors.white),
      getStartedStyle: Fonts.s32w4.copyWith(color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 0.5),
      nextButtonDecoration: BoxDecoration(
        color: primary,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.30), blurRadius: 16, offset: const Offset(0, 6))],
      ),
      getStartedButtonDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [primary, accent]),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.35), blurRadius: 20, offset: const Offset(0, 8))],
      ),
      imagePlaceholderDecoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r)),
    );
  }

  // ── Static dimensions (not theme-variant) ────────────────────
  static double get horizontalPadding => 30.w;
  static double get nextButtonSize => 80.w;
  static double get imageAreaHeight => 0.48.sh;
  static double get indicatorSize => 8.w;
  static double get indicatorActiveWidth => 30.w;
  static double get indicatorSpacing => 6.w;

  // ── ThemeExtension overrides ─────────────────────────────────
  @override
  OnboardingStyle copyWith({
    Color? background,
    Color? primaryColor,
    Color? accentColor,
    Color? indicatorActive,
    Color? indicatorInactive,
    Color? skipColor,
    Color? nextButtonBackground,
    Color? nextButtonForeground,
    TextStyle? tagStyle,
    TextStyle? titleStyle,
    TextStyle? descriptionStyle,
    TextStyle? skipStyle,
    TextStyle? nextStyle,
    TextStyle? getStartedStyle,
    BoxDecoration? nextButtonDecoration,
    BoxDecoration? getStartedButtonDecoration,
    BoxDecoration? imagePlaceholderDecoration,
  }) {
    return OnboardingStyle(
      background: background ?? this.background,
      primaryColor: primaryColor ?? this.primaryColor,
      accentColor: accentColor ?? this.accentColor,
      indicatorActive: indicatorActive ?? this.indicatorActive,
      indicatorInactive: indicatorInactive ?? this.indicatorInactive,
      skipColor: skipColor ?? this.skipColor,
      nextButtonBackground: nextButtonBackground ?? this.nextButtonBackground,
      nextButtonForeground: nextButtonForeground ?? this.nextButtonForeground,
      tagStyle: tagStyle ?? this.tagStyle,
      titleStyle: titleStyle ?? this.titleStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      skipStyle: skipStyle ?? this.skipStyle,
      nextStyle: nextStyle ?? this.nextStyle,
      getStartedStyle: getStartedStyle ?? this.getStartedStyle,
      nextButtonDecoration: nextButtonDecoration ?? this.nextButtonDecoration,
      getStartedButtonDecoration: getStartedButtonDecoration ?? this.getStartedButtonDecoration,
      imagePlaceholderDecoration: imagePlaceholderDecoration ?? this.imagePlaceholderDecoration,
    );
  }

  @override
  OnboardingStyle lerp(covariant ThemeExtension<OnboardingStyle>? other, double t) {
    if (other is! OnboardingStyle || identical(this, other)) return this;
    return OnboardingStyle(
      background: Color.lerp(background, other.background, t)!,
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      accentColor: Color.lerp(accentColor, other.accentColor, t)!,
      indicatorActive: Color.lerp(indicatorActive, other.indicatorActive, t)!,
      indicatorInactive: Color.lerp(indicatorInactive, other.indicatorInactive, t)!,
      skipColor: Color.lerp(skipColor, other.skipColor, t)!,
      nextButtonBackground: Color.lerp(nextButtonBackground, other.nextButtonBackground, t)!,
      nextButtonForeground: Color.lerp(nextButtonForeground, other.nextButtonForeground, t)!,
      tagStyle: TextStyle.lerp(tagStyle, other.tagStyle, t)!,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      descriptionStyle: TextStyle.lerp(descriptionStyle, other.descriptionStyle, t)!,
      skipStyle: TextStyle.lerp(skipStyle, other.skipStyle, t)!,
      nextStyle: TextStyle.lerp(nextStyle, other.nextStyle, t)!,
      getStartedStyle: TextStyle.lerp(getStartedStyle, other.getStartedStyle, t)!,
      nextButtonDecoration: BoxDecoration.lerp(nextButtonDecoration, other.nextButtonDecoration, t)!,
      getStartedButtonDecoration: BoxDecoration.lerp(getStartedButtonDecoration, other.getStartedButtonDecoration, t)!,
      imagePlaceholderDecoration: BoxDecoration.lerp(imagePlaceholderDecoration, other.imagePlaceholderDecoration, t)!,
    );
  }
}
