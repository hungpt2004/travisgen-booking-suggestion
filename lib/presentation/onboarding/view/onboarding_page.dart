import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/presentation/onboarding/model/onboarding_item.dart';
import 'package:auto_router_pkg/presentation/onboarding/onboarding_style.dart';
import 'package:auto_router_pkg/presentation/onboarding/widgets/onboarding_bottom_bar.dart';
import 'package:auto_router_pkg/presentation/onboarding/widgets/onboarding_indicator.dart';
import 'package:auto_router_pkg/presentation/onboarding/widgets/onboarding_page_item.dart';
import 'package:auto_router_pkg/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingView();
  }
}

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);
  }

  void _onNext() {
    _pageController.nextPage(duration: const Duration(milliseconds: 350), curve: Curves.easeInOut);
  }

  void _onSkip() {
    _pageController.animateToPage(
      onboardingItems.length - 1,
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOut,
    );
  }

  void _onGetStarted() {
    context.router.replaceAll([const RootRoute()]);
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return Scaffold(
      backgroundColor: style.background,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: onboardingItems.length,
              itemBuilder: (_, index) => OnboardingPageItem(
                item: onboardingItems[index],
                pageController: _pageController,
                indicator: OnboardingIndicator(currentIndex: _currentIndex, count: onboardingItems.length),
              ),
            ),
          ),
          AnimatedPadding(
            duration: const Duration(milliseconds: 380),
            curve: Curves.easeOutCubic,
            padding: EdgeInsets.only(left: 4, right: 32.w, bottom: 28.h),
            child: OnboardingBottomBar(
              currentIndex: _currentIndex,
              totalCount: onboardingItems.length,
              pageController: _pageController,
              onSkip: _onSkip,
              onNext: _onNext,
              onGetStarted: _onGetStarted,
            ),
          ),
        ],
      ),
    );
  }
}
