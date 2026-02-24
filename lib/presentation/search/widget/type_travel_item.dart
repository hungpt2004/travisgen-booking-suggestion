import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/travel_type.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TypeTravelItem extends StatelessWidget {
  const TypeTravelItem({super.key, required this.travelType, required this.isSelected, this.onTap});

  final TravelType travelType;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryDeepBlue.withValues(alpha: 0.08) : Colors.white,
          borderRadius: BorderRadius.circular(40.r),
          border: Border.all(
            color: isSelected ? AppColor.primaryDeepBlue : AppColor.lightGrey,
            width: isSelected ? 4.w : 1.w,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5.w,
          children: [
            Container(
              width: 30.w,
              height: 30.w,
              margin: EdgeInsets.only(left: 8.w, right: 8.w),
              child: travelType.url.isNotEmpty ? SvgPicture.asset(travelType.url) : SizedBox.shrink(),
            ),
            Text(
              travelType.titleKey.tr(),
              style: Fonts.s28w7.copyWith(color: isSelected ? AppColor.primaryDeepBlue : AppColor.mediumGrey),
              textAlign: TextAlign.center,
            ),
          ],
        ).padSym(h: 16),
      ),
    );
  }
}
