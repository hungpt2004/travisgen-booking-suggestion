import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/destination.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/presentation/search/widget/destination_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DestinationSection extends StatelessWidget {
  const DestinationSection({super.key});

  void onDestinationSelected(Destination destination) {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Assets.root.icLocation.svg(width: 30.w, height: 30.w),
              AppSize.w4,
              Text('Điểm đến', style: Fonts.s28w6.copyWith(color: Colors.black)),
            ],
          ),
          AppSize.h4,
          Row(
            spacing: 40.w,
            children: [
              Expanded(
                child: DestinationItem(destination: destinations[0], height: 120.h, fullWidth: false, isSelected: true),
              ),
              Expanded(
                child: DestinationItem(
                  destination: destinations[1],
                  height: 120.h,
                  fullWidth: false,
                  isSelected: false,
                ),
              ),
            ],
          ),
          AppSize.h6,
          DestinationItem(destination: destinations[2], height: 80.h, fullWidth: true, isSelected: false),
        ],
      ),
    );
  }
}
