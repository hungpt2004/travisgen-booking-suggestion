import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:auto_router_pkg/router/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<AuthStyle>()!;
    return Scaffold(
      body: Stack(
        children: [
          // ── Background gradient ───────────────────────────────
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1D0A8D), Color(0xFF0D0650), Color(0xFF060330)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // ── Decorative blobs ──────────────────────────────────
          Positioned(
            top: -80.w,
            right: -60.w,
            child: _Blob(size: 260.w, color: const Color(0xFF7C6FFF), opacity: 0.18),
          ),
          Positioned(
            bottom: 200.h,
            left: -80.w,
            child: _Blob(size: 200.w, color: const Color(0xFFF4A435), opacity: 0.10),
          ),

          // ── Content ───────────────────────────────────────────
          SafeArea(
            child: Column(
              children: [
                Expanded(child: _SplashHero(style: style)),
                _SplashActions(style: style),
                SizedBox(height: 48.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Hero — Lottie animation + app name + tagline
// ─────────────────────────────────────────────────────────
class _SplashHero extends StatelessWidget {
  final AuthStyle style;
  const _SplashHero({required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.animations.location.lottie(width: 220.w, height: 220.w, repeat: true),
        SizedBox(height: 24.h),
        Text('VietGo', style: style.appNameStyle),
        SizedBox(height: 10.h),
        Text('splash.tagline'.tr(), style: style.taglineStyle, textAlign: TextAlign.center),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Actions — Login, Register, Skip buttons
// ─────────────────────────────────────────────────────────
class _SplashActions extends StatelessWidget {
  final AuthStyle style;
  const _SplashActions({required this.style});

  @override
  Widget build(BuildContext context) {
    final h = AuthStyle.horizontalPadding;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Primary — Login
          _SplashButton(
            label: 'auth.login_button'.tr(),
            style: style.primaryButtonStyle,
            decoration: style.primaryButtonDecoration,
            onTap: () => context.router.push(const LoginRoute()),
          ),
          SizedBox(height: 14.h),

          // Outline — Register
          _SplashButton(
            label: 'auth.register_button'.tr(),
            style: style.outlineButtonStyle,
            decoration: style.outlineButtonDecoration,
            onTap: () => context.router.push(const RegisterRoute()),
          ),
          SizedBox(height: 20.h),

          // Text — Skip → Onboarding
          TextButton(
            onPressed: () => context.router.replace(const OnboardingRoute()),
            child: Text('auth.skip'.tr(), style: style.outlineButtonStyle.copyWith(fontSize: 13.sp)),
          ),
        ],
      ),
    );
  }
}

class _SplashButton extends StatelessWidget {
  final String label;
  final TextStyle style;
  final BoxDecoration decoration;
  final VoidCallback onTap;

  const _SplashButton({required this.label, required this.style, required this.decoration, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AuthStyle.buttonHeight,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: decoration,
        child: Text(label, style: style),
      ),
    );
  }
}

class _Blob extends StatelessWidget {
  final double size;
  final Color color;
  final double opacity;
  const _Blob({required this.size, required this.color, required this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withValues(alpha: opacity),
        shape: BoxShape.circle,
      ),
    );
  }
}
