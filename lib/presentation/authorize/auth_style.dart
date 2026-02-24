import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// ThemeExtension for all authorize screens (Splash, Login, Register).
/// Access via: `Theme.of(context).extension<AuthStyle>()!`
@immutable
class AuthStyle extends ThemeExtension<AuthStyle> {
  // ── Colors ──────────────────────────────────────────────────
  final Color background;
  final Color primary;
  final Color inputFill;
  final Color inputBorder;
  final Color labelColor;
  final Color hintColor;
  final Color errorColor;
  final Color dividerColor;
  final Color socialButtonBorder;
  final Color linkColor;

  // ── Text styles ──────────────────────────────────────────────
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final TextStyle labelStyle;
  final TextStyle inputStyle;
  final TextStyle hintStyle;
  final TextStyle linkStyle;
  final TextStyle primaryButtonStyle;
  final TextStyle outlineButtonStyle;
  final TextStyle orDividerStyle;
  final TextStyle appNameStyle;
  final TextStyle taglineStyle;

  // ── Decorations / dimensions ─────────────────────────────────
  final BoxDecoration primaryButtonDecoration;
  final BoxDecoration outlineButtonDecoration;

  static double get horizontalPadding => 28.w;
  static double get buttonHeight => 52.h;
  static double get inputHeight => 52.h;
  static double get borderRadius => 14.r;

  const AuthStyle({
    required this.background,
    required this.primary,
    required this.inputFill,
    required this.inputBorder,
    required this.labelColor,
    required this.hintColor,
    required this.errorColor,
    required this.dividerColor,
    required this.socialButtonBorder,
    required this.linkColor,
    required this.titleStyle,
    required this.subtitleStyle,
    required this.labelStyle,
    required this.inputStyle,
    required this.hintStyle,
    required this.linkStyle,
    required this.primaryButtonStyle,
    required this.outlineButtonStyle,
    required this.orDividerStyle,
    required this.appNameStyle,
    required this.taglineStyle,
    required this.primaryButtonDecoration,
    required this.outlineButtonDecoration,
  });

  factory AuthStyle.light() {
    const primary = AppColor.primaryDeepBlue;
    return AuthStyle(
      background: AppColor.backgroundColor,
      primary: primary,
      inputFill: const Color(0xFFF3F4F6),
      inputBorder: const Color(0xFFE5E7EB),
      labelColor: const Color(0xFF374151),
      hintColor: const Color(0xFF9CA3AF),
      errorColor: const Color(0xFFEF4444),
      dividerColor: const Color(0xFFE5E7EB),
      socialButtonBorder: const Color(0xFFD1D5DB),
      linkColor: primary,
      titleStyle: Fonts.s32w7.copyWith(color: const Color(0xFF111827), height: 1.2),
      subtitleStyle: Fonts.s28w4.copyWith(color: const Color(0xFF6B7280), height: 1.5),
      labelStyle: Fonts.s24w5.copyWith(color: const Color(0xFF374151)),
      inputStyle: Fonts.s28w4.copyWith(color: const Color(0xFF111827)),
      hintStyle: Fonts.s28w4.copyWith(color: const Color(0xFF9CA3AF)),
      linkStyle: Fonts.s24w6.copyWith(color: primary),
      primaryButtonStyle: Fonts.s28w6.copyWith(color: Colors.white, letterSpacing: 0.3),
      outlineButtonStyle: Fonts.s28w6.copyWith(color: primary, letterSpacing: 0.3),
      orDividerStyle: Fonts.s24w4.copyWith(color: const Color(0xFF9CA3AF)),
      appNameStyle: Fonts.s48w8.copyWith(color: Colors.white, letterSpacing: -0.5),
      taglineStyle: Fonts.s28w4.copyWith(color: Colors.white.withValues(alpha: 0.85), height: 1.4),
      primaryButtonDecoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColor.primaryDeepBlue, Color(0xFF3B2BE8)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.30), blurRadius: 20, offset: const Offset(0, 8))],
      ),
      outlineButtonDecoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.6), width: 1.5),
      ),
    );
  }

  factory AuthStyle.dark() {
    const primary = Color(0xFF7C6FFF);
    return AuthStyle(
      background: const Color(0xFF111827),
      primary: primary,
      inputFill: const Color(0xFF1F2937),
      inputBorder: const Color(0xFF374151),
      labelColor: const Color(0xFFD1D5DB),
      hintColor: const Color(0xFF6B7280),
      errorColor: const Color(0xFFF87171),
      dividerColor: const Color(0xFF374151),
      socialButtonBorder: const Color(0xFF4B5563),
      linkColor: primary,
      titleStyle: Fonts.s32w7.copyWith(color: Colors.white, height: 1.2),
      subtitleStyle: Fonts.s28w4.copyWith(color: const Color(0xFF9CA3AF), height: 1.5),
      labelStyle: Fonts.s24w5.copyWith(color: const Color(0xFFD1D5DB)),
      inputStyle: Fonts.s28w4.copyWith(color: Colors.white),
      hintStyle: Fonts.s28w4.copyWith(color: const Color(0xFF6B7280)),
      linkStyle: Fonts.s24w6.copyWith(color: primary),
      primaryButtonStyle: Fonts.s28w6.copyWith(color: Colors.white, letterSpacing: 0.3),
      outlineButtonStyle: Fonts.s28w6.copyWith(color: Colors.white, letterSpacing: 0.3),
      orDividerStyle: Fonts.s24w4.copyWith(color: const Color(0xFF6B7280)),
      appNameStyle: Fonts.s48w8.copyWith(color: Colors.white, letterSpacing: -0.5),
      taglineStyle: Fonts.s28w4.copyWith(color: Colors.white.withValues(alpha: 0.75), height: 1.4),
      primaryButtonDecoration: BoxDecoration(
        gradient: LinearGradient(colors: [primary, const Color(0xFF5B4FE8)]),
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [BoxShadow(color: primary.withValues(alpha: 0.30), blurRadius: 20, offset: const Offset(0, 8))],
      ),
      outlineButtonDecoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.white.withValues(alpha: 0.4), width: 1.5),
      ),
    );
  }

  @override
  AuthStyle copyWith({
    Color? background,
    Color? primary,
    Color? inputFill,
    Color? inputBorder,
    Color? labelColor,
    Color? hintColor,
    Color? errorColor,
    Color? dividerColor,
    Color? socialButtonBorder,
    Color? linkColor,
    TextStyle? titleStyle,
    TextStyle? subtitleStyle,
    TextStyle? labelStyle,
    TextStyle? inputStyle,
    TextStyle? hintStyle,
    TextStyle? linkStyle,
    TextStyle? primaryButtonStyle,
    TextStyle? outlineButtonStyle,
    TextStyle? orDividerStyle,
    TextStyle? appNameStyle,
    TextStyle? taglineStyle,
    BoxDecoration? primaryButtonDecoration,
    BoxDecoration? outlineButtonDecoration,
  }) {
    return AuthStyle(
      background: background ?? this.background,
      primary: primary ?? this.primary,
      inputFill: inputFill ?? this.inputFill,
      inputBorder: inputBorder ?? this.inputBorder,
      labelColor: labelColor ?? this.labelColor,
      hintColor: hintColor ?? this.hintColor,
      errorColor: errorColor ?? this.errorColor,
      dividerColor: dividerColor ?? this.dividerColor,
      socialButtonBorder: socialButtonBorder ?? this.socialButtonBorder,
      linkColor: linkColor ?? this.linkColor,
      titleStyle: titleStyle ?? this.titleStyle,
      subtitleStyle: subtitleStyle ?? this.subtitleStyle,
      labelStyle: labelStyle ?? this.labelStyle,
      inputStyle: inputStyle ?? this.inputStyle,
      hintStyle: hintStyle ?? this.hintStyle,
      linkStyle: linkStyle ?? this.linkStyle,
      primaryButtonStyle: primaryButtonStyle ?? this.primaryButtonStyle,
      outlineButtonStyle: outlineButtonStyle ?? this.outlineButtonStyle,
      orDividerStyle: orDividerStyle ?? this.orDividerStyle,
      appNameStyle: appNameStyle ?? this.appNameStyle,
      taglineStyle: taglineStyle ?? this.taglineStyle,
      primaryButtonDecoration: primaryButtonDecoration ?? this.primaryButtonDecoration,
      outlineButtonDecoration: outlineButtonDecoration ?? this.outlineButtonDecoration,
    );
  }

  @override
  AuthStyle lerp(covariant ThemeExtension<AuthStyle>? other, double t) {
    if (other is! AuthStyle || identical(this, other)) return this;
    return AuthStyle(
      background: Color.lerp(background, other.background, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      inputFill: Color.lerp(inputFill, other.inputFill, t)!,
      inputBorder: Color.lerp(inputBorder, other.inputBorder, t)!,
      labelColor: Color.lerp(labelColor, other.labelColor, t)!,
      hintColor: Color.lerp(hintColor, other.hintColor, t)!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t)!,
      socialButtonBorder: Color.lerp(socialButtonBorder, other.socialButtonBorder, t)!,
      linkColor: Color.lerp(linkColor, other.linkColor, t)!,
      titleStyle: TextStyle.lerp(titleStyle, other.titleStyle, t)!,
      subtitleStyle: TextStyle.lerp(subtitleStyle, other.subtitleStyle, t)!,
      labelStyle: TextStyle.lerp(labelStyle, other.labelStyle, t)!,
      inputStyle: TextStyle.lerp(inputStyle, other.inputStyle, t)!,
      hintStyle: TextStyle.lerp(hintStyle, other.hintStyle, t)!,
      linkStyle: TextStyle.lerp(linkStyle, other.linkStyle, t)!,
      primaryButtonStyle: TextStyle.lerp(primaryButtonStyle, other.primaryButtonStyle, t)!,
      outlineButtonStyle: TextStyle.lerp(outlineButtonStyle, other.outlineButtonStyle, t)!,
      orDividerStyle: TextStyle.lerp(orDividerStyle, other.orDividerStyle, t)!,
      appNameStyle: TextStyle.lerp(appNameStyle, other.appNameStyle, t)!,
      taglineStyle: TextStyle.lerp(taglineStyle, other.taglineStyle, t)!,
      primaryButtonDecoration: BoxDecoration.lerp(primaryButtonDecoration, other.primaryButtonDecoration, t)!,
      outlineButtonDecoration: BoxDecoration.lerp(outlineButtonDecoration, other.outlineButtonDecoration, t)!,
    );
  }
}
