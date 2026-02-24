// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  final Brightness brightness;

  // Background colors
  final Color scaffoldBackground;

  // Text field
  final Color placeholder;

  // Status colors
  final Color success;
  final Color error;

  // Text colors
  final Color primaryText;

  // Button colors
  final Color authButtonBackground;
  final Color socialButtonBg;
  final Color buttonText;
  final Color buttonDisabled;
  final Color buttonDisabledText;

  // Divider colors
  final Color divider;

  // Link colors
  final Color link;

  // Club profile
  final Color actionButtonBackground;

  final Color secondaryBackground;

  final Color tabbarDisabled;

  // Date selector colors
  final Color dateSelectorPrimary;
  final Color dateSelectorSecondary;
  final Color dateSelectorBorder;

  // Booking card
  final Color bookingCardSecondaryBackground;

  final Color startMatch;
  final Color primaryMatch;

  final Color borderColor;

  // Chat colors
  final Color currentUserMessageBackground;
  final Color otherUserMessageBackground;

  Palette({
    required this.brightness,
    required this.actionButtonBackground,
    required this.bookingCardSecondaryBackground,
    required this.otherUserMessageBackground,
    this.scaffoldBackground = const Color(0xFFFFFFFF),
    this.placeholder = const Color(0xFF808089),
    this.success = const Color(0xFF10B981),
    this.error = const Color(0xFFF20000),
    this.primaryText = const Color(0xFF111827),
    this.authButtonBackground = const Color(0xFFD2F46F),
    this.socialButtonBg = const Color(0xFFD7E4E5),
    this.buttonText = const Color(0xFF111827),
    this.divider = const Color(0xFF6B7280),
    this.link = const Color(0xFF4A90E2),
    this.secondaryBackground = const Color(0xFFF5F4F7),
    this.dateSelectorPrimary = const Color(0xFFFFFFFF),
    this.dateSelectorSecondary = const Color(0xFF0D2432),
    this.dateSelectorBorder = const Color(0xFFCFD3D5),
    this.startMatch = const Color(0xFF566570),
    this.primaryMatch = AppColor.backgroundColor,
    this.buttonDisabled = const Color(0xFFEBEBEB),
    this.tabbarDisabled = const Color(0xFFDDDDDD),
    this.buttonDisabledText = const Color(0xFFB9B9B9),
    this.borderColor = const Color(0xFF6B7280),
    this.currentUserMessageBackground = const Color(0xFFD2F46F),
  });

  factory Palette.light() {
    return Palette(
      brightness: Brightness.light,
      actionButtonBackground: Colors.white.withValues(alpha: 0.7),
      bookingCardSecondaryBackground: Colors.lightBlueAccent.withValues(alpha: 0.2),
      otherUserMessageBackground: const Color(0xFF808080).withValues(alpha: 0.1),
    );
  }

  factory Palette.dark() {
    return Palette(
      brightness: Brightness.dark,
      scaffoldBackground: const Color(0xFF3A3A3A),
      authButtonBackground: const Color(0xFF424242),
      buttonText: const Color(0xFFFFFFFF),
      link: const Color(0xFF64B5F6),
      actionButtonBackground: const Color(0xFF1A1A1A).withValues(alpha: 0.7),
      bookingCardSecondaryBackground: Colors.lightBlueAccent.withValues(alpha: 0.2),
      otherUserMessageBackground: const Color(0xFF808080).withValues(alpha: 0.1),
    );
  }

  @override
  ThemeExtension<Palette> lerp(covariant ThemeExtension<Palette>? other, double t) {
    if (other is! Palette || identical(this, other)) {
      return this;
    }

    return Palette(
      brightness: brightness,
      scaffoldBackground: Color.lerp(scaffoldBackground, other.scaffoldBackground, t)!,
      placeholder: Color.lerp(placeholder, other.placeholder, t)!,
      success: Color.lerp(success, other.success, t)!,
      error: Color.lerp(error, other.error, t)!,
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      authButtonBackground: Color.lerp(authButtonBackground, other.authButtonBackground, t)!,
      socialButtonBg: Color.lerp(socialButtonBg, other.socialButtonBg, t)!,
      buttonText: Color.lerp(buttonText, other.buttonText, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      link: Color.lerp(link, other.link, t)!,
      actionButtonBackground: Color.lerp(actionButtonBackground, other.actionButtonBackground, t)!,
      secondaryBackground: Color.lerp(secondaryBackground, other.secondaryBackground, t)!,
      dateSelectorPrimary: Color.lerp(dateSelectorPrimary, other.dateSelectorPrimary, t)!,
      dateSelectorSecondary: Color.lerp(dateSelectorSecondary, other.dateSelectorSecondary, t)!,
      dateSelectorBorder: Color.lerp(dateSelectorBorder, other.dateSelectorBorder, t)!,
      bookingCardSecondaryBackground: Color.lerp(
        bookingCardSecondaryBackground,
        other.bookingCardSecondaryBackground,
        t,
      )!,
      buttonDisabled: Color.lerp(buttonDisabled, other.buttonDisabled, t)!,
      buttonDisabledText: Color.lerp(buttonDisabledText, other.buttonDisabledText, t)!,
      borderColor: Color.lerp(borderColor, other.borderColor, t)!,
      currentUserMessageBackground: Color.lerp(currentUserMessageBackground, other.currentUserMessageBackground, t)!,
      otherUserMessageBackground: Color.lerp(otherUserMessageBackground, other.otherUserMessageBackground, t)!,
    );
  }

  @override
  Palette copyWith({
    Brightness? brightness,
    Color? scaffoldBackground,
    Color? placeholder,
    Color? success,
    Color? error,
    Color? textPrimary,
    Color? buttonBackground,
    Color? buttonText,
    Color? divider,
    Color? link,
    Color? actionButtonBackground,
    Color? secondaryBackground,
    Color? primary,
    Color? secondary,
    Color? border,
    Color? bookingCardSecondaryBackground,
    Color? socialButtonBg,
    Color? buttonDisabled,
    Color? buttonDisabledText,
    Color? borderColor,
    Color? currentUserMessageBackground,
    Color? otherUserMessageBackground,
  }) {
    return Palette(
      brightness: brightness ?? this.brightness,
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      placeholder: placeholder ?? this.placeholder,
      success: success ?? this.success,
      error: error ?? this.error,
      primaryText: textPrimary ?? primaryText,
      authButtonBackground: buttonBackground ?? authButtonBackground,
      socialButtonBg: socialButtonBg ?? this.socialButtonBg,
      buttonText: buttonText ?? this.buttonText,
      divider: divider ?? this.divider,
      link: link ?? this.link,
      actionButtonBackground: actionButtonBackground ?? this.actionButtonBackground,
      secondaryBackground: secondaryBackground ?? this.secondaryBackground,
      dateSelectorPrimary: primary ?? dateSelectorPrimary,
      dateSelectorSecondary: secondary ?? dateSelectorSecondary,
      dateSelectorBorder: border ?? dateSelectorBorder,
      bookingCardSecondaryBackground: bookingCardSecondaryBackground ?? this.bookingCardSecondaryBackground,
      buttonDisabled: buttonDisabled ?? this.buttonDisabled,
      buttonDisabledText: buttonDisabledText ?? this.buttonDisabledText,
      borderColor: borderColor ?? this.borderColor,
      currentUserMessageBackground: currentUserMessageBackground ?? this.currentUserMessageBackground,
      otherUserMessageBackground: otherUserMessageBackground ?? this.otherUserMessageBackground,
    );
  }
}
