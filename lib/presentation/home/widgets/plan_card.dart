import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColor.primaryDeepBlue,
        borderRadius: BorderRadius.circular(50.r),
        boxShadow: [
          BoxShadow(color: AppColor.primaryDeepBlue.withValues(alpha: 0.3), blurRadius: 10.r, offset: Offset(0, 2.h)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSize.h10,
          Text(
            LocaleKeys.home_plan_now.tr(),
            style: Fonts.s36w8.copyWith(height: 1, fontWeight: FontWeight.bold, color: AppColor.backgroundColor),
          ),
          AppSize.h2,
          Text(
            LocaleKeys.home_optimize_cost.tr(),
            style: Fonts.s28w4.copyWith(height: 1, color: AppColor.backgroundColor),
          ),
          AppSize.h10,
          Container(
            height: 25.h,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50.r)),
            child: Row(
              children: [
                AppSize.w24,
                Icon(Icons.search, size: 50.w, color: AppColor.primaryDeepBlue),
                AppSize.w16,
                Text(LocaleKeys.home_where_go.tr(), style: Fonts.s28w4.copyWith(color: AppColor.mediumGrey)),
              ],
            ),
          ),
        ],
      ).padSym(h: 24),
    ).padSym(h: 16);
  }
}
