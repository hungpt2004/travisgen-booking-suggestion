import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/presentation/onboarding/model/onboarding_item.dart';
import 'package:auto_router_pkg/presentation/onboarding/onboarding_style.dart';
import 'package:auto_router_pkg/presentation/onboarding/widgets/onboarding_indicator.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPageItem extends StatelessWidget {
  final OnboardingItem item;
  final OnboardingIndicator indicator;

  /// PageController được dùng thay currentIndex để lấy giá trị
  /// fractional liên tục trong lúc kéo (smooth crossfade).
  final PageController pageController;

  const OnboardingPageItem({super.key, required this.item, required this.indicator, required this.pageController});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return SafeArea(
      child: Column(
        children: [
          ImageArea(style: style, pageController: pageController),
          indicator,
          AppSize.h16,
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                OnboardingStyle.horizontalPadding,
                4.h,
                OnboardingStyle.horizontalPadding,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TagChip(tag: item.tag, color: item.accentColor),
                  AppSize.h12,
                  Text(item.titleKey.tr(), style: style.titleStyle),
                  AppSize.h6,
                  Text(item.descKey.tr(), style: style.descriptionStyle, maxLines: 4, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// ImageArea — crossfade mượt theo gesture nhờ PageController fractional value
// ─────────────────────────────────────────────────────────────────────────────
class ImageArea extends StatelessWidget {
  final OnboardingStyle style;
  final PageController pageController;

  const ImageArea({super.key, required this.style, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: OnboardingStyle.imageAreaHeight,
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, _) {
          // Lấy giá trị page liên tục 0.0 → 1.0 trong khi kéo
          final page = pageController.hasClients ? (pageController.page ?? 0.0) : 0.0;
          // progress: 0.0 = page 0 hoàn toàn, 1.0 = page 1 hoàn toàn
          final progress = page.clamp(0.0, 1.0);

          return Stack(
            children: [
              // Layout page 0: Stack 3 ảnh
              Opacity(
                opacity: (1.0 - progress).clamp(0.0, 1.0),
                child: SizedBox(
                  width: double.infinity,
                  height: OnboardingStyle.imageAreaHeight,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 20,
                        child: ImageItem(itemPath: Assets.images.mangden.path, style: style),
                      ),
                      Positioned(
                        left: 89,
                        top: 60,
                        child: ImageItem(itemPath: Assets.images.hochiminh.path, style: style),
                      ),
                      Positioned(
                        left: 192,
                        top: 90,
                        child: ImageItem(itemPath: Assets.images.hanoi.path, style: style),
                      ),
                    ],
                  ).padSym(h: 12),
                ),
              ),

              // Layout page 1: ảnh đơn onboarding
              Opacity(
                opacity: progress.clamp(0.0, 1.0),
                child: SizedBox(
                  width: double.infinity,
                  height: OnboardingStyle.imageAreaHeight,
                  child: Assets.images.onboarding.image(fit: BoxFit.cover),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  final String itemPath;
  final OnboardingStyle style;

  const ImageItem({super.key, required this.itemPath, required this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 80.h,
      decoration: style.imagePlaceholderDecoration.copyWith(
        image: DecorationImage(image: AssetImage(itemPath), fit: BoxFit.cover),
      ),
    );
  }
}

class TagChip extends StatelessWidget {
  final String tag;
  final Color color;

  const TagChip({super.key, required this.tag, required this.color});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<OnboardingStyle>()!;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
      decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(50.r)),
      child: Text(tag, style: style.tagStyle.copyWith(color: color)),
    );
  }
}
