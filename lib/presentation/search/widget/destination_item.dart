import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/destination.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationItem extends StatelessWidget {
  const DestinationItem({
    super.key,
    required this.destination,
    required this.height,
    required this.fullWidth,
    required this.isSelected,
  });

  final Destination destination;
  final double height;
  final bool fullWidth;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60.r),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              destination.url,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              height: height,
              width: fullWidth ? MediaQuery.sizeOf(context).width : null,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  border: isSelected ? Border.all(color: AppColor.primaryDeepBlue, width: 6.w) : null,
                  borderRadius: BorderRadius.circular(60.r),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withValues(alpha: 0.5), Colors.transparent],
                  ),
                ),
              ),
            ),
            isSelected
                ? Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      alignment: Alignment.center,
                      width: 60.w,
                      height: 80.w,
                      decoration: BoxDecoration(
                        color: AppColor.primaryDeepBlue,
                        borderRadius: BorderRadius.circular(60.r),
                      ),
                      child: Assets.root.icCheck.svg(
                        colorFilter: ColorFilter.mode(AppColor.backgroundColor, BlendMode.srcIn),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.only(left: 12, bottom: 12),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.nameKey.tr(),
                      style: Fonts.s34w6.copyWith(
                        color: AppColor.backgroundColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                    ),
                    Text(
                      destination.descriptionKey.tr(),
                      style: Fonts.s28w5.copyWith(color: AppColor.backgroundColor, letterSpacing: 0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
