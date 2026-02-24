import 'package:auto_router_pkg/common/theme/palette.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:auto_router_pkg/presentation/onboarding/onboarding_style.dart';
import 'package:flutter/material.dart';

final Map<ThemeMode, ThemeSheet> themes = {
  ThemeMode.light: ThemeSheet(
    palette: Palette.light(),
    textStyles: AppTextStyles.fromPalette(Palette.light()),
    onboarding: OnboardingStyle.light(),
    auth: AuthStyle.light(),
  ),
  ThemeMode.dark: ThemeSheet(
    palette: Palette.dark(),
    textStyles: AppTextStyles.fromPalette(Palette.dark()),
    onboarding: OnboardingStyle.dark(),
    auth: AuthStyle.dark(),
  ),
};

class ThemeSheet {
  final ThemeData themeData;
  final Palette palette;
  final AppTextStyles textStyles;
  final OnboardingStyle onboarding;
  final AuthStyle auth;

  ThemeSheet({required this.palette, required this.textStyles, required this.onboarding, required this.auth})
    : themeData = ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        brightness: palette.brightness,
        scaffoldBackgroundColor: palette.scaffoldBackground,
        extensions: [palette, textStyles, onboarding, auth],
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        bottomSheetTheme: const BottomSheetThemeData(showDragHandle: false),
      );
}
