import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/presentation/onboarding/onboarding_style.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBottomBar extends StatelessWidget {
  final int currentIndex;
  final int totalCount;
  final PageController pageController;
  final VoidCallback onSkip;
  final VoidCallback onNext;
  final VoidCallback onGetStarted;

  const OnboardingBottomBar({
    super.key,
    required this.currentIndex,
    required this.totalCount,
    required this.pageController,
    required this.onSkip,
    required this.onNext,
    required this.onGetStarted,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, _) {
        final t =
            (pageController.hasClients
                    ? (pageController.page ?? currentIndex.toDouble())
                    : currentIndex.toDouble() - (totalCount - 2))
                .clamp(0.0, 1.0);
        return Stack(
          alignment: Alignment.centerLeft,
          children: [
            Opacity(
              opacity: (1 - t).clamp(0.0, 1.0),
              child: IgnorePointer(
                ignoring: t > 0.5,
                child: _SkipButton(onSkip: onSkip, onNext: onNext),
              ),
            ),

            Opacity(
              opacity: t.clamp(0.0, 1.0),
              child: IgnorePointer(
                ignoring: t < 0.5,
                child: _GetStartedRow(onGetStarted: onGetStarted),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _SkipButton extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;

  const _SkipButton({required this.onSkip, required this.onNext});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: onSkip,
          child: Text(LocaleKeys.onboarding_skip.tr(), style: style.skipStyle),
        ),
        _NextButton(onNext: onNext, style: style),
      ],
    );
  }
}

class _NextButton extends StatelessWidget {
  final VoidCallback onNext;
  final OnboardingStyle style;

  const _NextButton({required this.onNext, required this.style});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onNext,
      child: SizedBox(
        width: OnboardingStyle.nextButtonSize,
        height: OnboardingStyle.nextButtonSize,
        child: Assets.root.swipeLeft.svg(colorFilter: ColorFilter.mode(AppColor.primaryDeepBlue, BlendMode.srcIn)),
      ),
    );
  }
}

class _GetStartedRow extends StatelessWidget {
  final VoidCallback onGetStarted;

  const _GetStartedRow({required this.onGetStarted});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return GestureDetector(
      onTap: onGetStarted,
      child: Container(
        height: 32.h,
        decoration: style.getStartedButtonDecoration,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(LocaleKeys.onboarding_get_started.tr(), style: style.getStartedStyle),
            AppSize.w12,
            Assets.root.handShake.svg(colorFilter: ColorFilter.mode(AppColor.backgroundColor, BlendMode.srcIn)),
          ],
        ),
      ),
    ).padOnly(l: 10);
  }
}
