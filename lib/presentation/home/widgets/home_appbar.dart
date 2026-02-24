import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/user.dart';
import 'package:auto_router_pkg/widget/avatar/app_avatar.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Avatar(width: 80.w, height: 80.w, user: user),
        10.wSpace,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Chuyến đi tiếp theo?',
                style: Fonts.s32w4.copyWith(color: Colors.black, letterSpacing: 0.2, fontWeight: FontWeight.bold),
              ),
              Text(
                'Chọn điểm đến và tụi mình lo lịch trình nha',
                style: Fonts.s24w4.withColor(AppColor.mediumGrey),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        8.wSpace,
        Stack(
          children: [
            const Icon(Icons.notifications_none_rounded, color: Colors.black, size: AppSize.s24),
            Positioned(
              right: 0,
              top: 4.w,
              child: Container(
                width: 18.w,
                height: 18.w,
                decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
