import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(horizontal: isSelected ? 22.w : 20.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryDeepBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(80.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              icon,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                  : ColorFilter.mode(Colors.white, BlendMode.srcIn),
              width: isSelected ? 45.w : 55.w,
              height: isSelected ? 45.w : 55.w,
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: isSelected
                  ? Text(label, style: Fonts.s32w6.copyWith(color: Colors.white)).padOnly(l: 8.w)
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
