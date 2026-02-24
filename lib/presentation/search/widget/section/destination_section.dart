import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/destination.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/presentation/search/widget/destination_item.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
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
          DestinationSectionHeader(),
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
    ).padSym(h: 20);
  }
}

class DestinationSectionHeader extends StatelessWidget {
  const DestinationSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Assets.root.icLocation.svg(width: 30.w, height: 30.w),
            AppSize.w4,
            Text(LocaleKeys.search_destination.tr(), style: Fonts.s28w6.copyWith(color: Colors.black)),
          ],
        ),
        Text(
          LocaleKeys.common_see_more.tr(),
          textAlign: TextAlign.center,
          style: Fonts.s28w6.copyWith(color: AppColor.darkBlue),
        ).padOnly(r: 10),
      ],
    );
  }
}
