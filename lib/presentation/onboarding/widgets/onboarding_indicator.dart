import 'package:auto_router_pkg/presentation/onboarding/onboarding_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingIndicator extends StatelessWidget {
  final int count;
  final int currentIndex;

  const OnboardingIndicator({super.key, required this.count, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: EdgeInsets.only(right: OnboardingStyle.indicatorSpacing),
          height: OnboardingStyle.indicatorSize,
          width: index == currentIndex ? OnboardingStyle.indicatorActiveWidth : OnboardingStyle.indicatorSize,
          decoration: BoxDecoration(
            color: index == currentIndex ? style.indicatorActive : style.indicatorInactive,
            borderRadius: BorderRadius.circular(100.r),
          ),
        );
      }),
    );
  }
}
