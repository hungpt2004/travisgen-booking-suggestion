import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/widget/app_button.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestPlanSection extends StatefulWidget {
  const SuggestPlanSection({super.key});

  @override
  State<SuggestPlanSection> createState() => _SuggestPlanSectionState();
}

class _SuggestPlanSectionState extends State<SuggestPlanSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.home_suggest_plan.tr(),
                textAlign: TextAlign.center,
                style: Fonts.s32w7.copyWith(color: Colors.black, fontWeight: FontWeight.bold, height: 1),
              ),
              Text(
                LocaleKeys.common_see_more.tr(),
                textAlign: TextAlign.center,
                style: Fonts.s30w6.copyWith(color: AppColor.primaryDeepBlue, fontWeight: FontWeight.bold, height: 1),
              ),
            ],
          ).padSym(h: 20),
          AppSize.h10,
          Container(
            height: 100.h,
            width: 600.w,
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: AppColor.lightGrey.withValues(alpha: 0.5), blurRadius: 10.r, offset: Offset(0, 2.h)),
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.r),
                                topRight: Radius.circular(50.r),
                              ),
                              child: Image.asset(Assets.images.dalat.path, fit: BoxFit.cover),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.r),
                                  topRight: Radius.circular(50.r),
                                ),
                              ),
                            ),
                          ),

                          Positioned(
                            right: 20,
                            top: -10,
                            child: Container(
                              height: 10.h,
                              decoration: BoxDecoration(
                                color: AppColor.secondaryDeepYellow,
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '20% Off',
                                  style: Fonts.s28w6.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                                ).padSym(h: 5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppSize.h10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            LocaleKeys.home_dalat_title.tr(),
                            textAlign: TextAlign.start,
                            style: Fonts.s32w4.copyWith(letterSpacing: 0.4, height: 1, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                LocaleKeys.home_days_nights.tr(namedArgs: {'days': '3', 'nights': '2'}),
                                style: Fonts.s28w4.copyWith(color: AppColor.mediumGrey, height: 1),
                              ),
                              Text(
                                LocaleKeys.home_price.tr(namedArgs: {'price': '2.200'}),
                                style: Fonts.s32w6.copyWith(
                                  color: AppColor.primaryDeepBlue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ).padOnly(r: 24.w),
                            ],
                          ),
                          // Button Booking
                        ],
                      ).padOnly(l: 32.w),
                    ),
                    AppSize.h12,
                  ],
                ),
                Positioned(
                  bottom: -15,
                  right: 10,
                  child: AppButton(
                    text: Text(LocaleKeys.common_book.tr(), style: Fonts.s28w7.withColor(AppColor.backgroundColor)),
                    borderRadius: 50.r,
                    onPressed: () {},
                    height: 8.h,
                    width: 30.w,
                  ),
                ),
              ],
            ),
          ).padSym(h: 20),
        ],
      ),
    );
  }
}
