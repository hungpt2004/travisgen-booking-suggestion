import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/data/model/user.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key, required this.width, required this.height, required this.user});

  final double width;
  final double height;
  final User user;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF3B82F6), width: 2.w),
            ),
            child: CircleAvatar(
              radius: (width - 4) / 2,
              backgroundColor: AppColor.lightGrey,
              child: ClipRRect(
                borderRadius: BorderRadius.circular((width - 4) / 2),
                child: Assets.root.icAvatar.image(width: width - 4, height: height - 4, fit: BoxFit.cover),
              ),
            ),
          ),
          if (user.isOnline)
            Positioned(
              right: 0,
              bottom: 2,
              child: Container(
                width: 20.w,
                height: 20.w,
                decoration: BoxDecoration(
                  color: AppColor.lightGreen,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
