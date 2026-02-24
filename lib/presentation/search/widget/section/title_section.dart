import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.search_next_trip.tr(),
            textAlign: TextAlign.left,
            style: Fonts.s48w8.copyWith(color: Colors.black, fontWeight: FontWeight.bold, letterSpacing: 0),
          ),
          Text(
            LocaleKeys.search_choose_destination.tr(),
            textAlign: TextAlign.left,
            style: Fonts.s28w4.copyWith(color: AppColor.mediumGrey, letterSpacing: 0),
          ),
        ],
      ),
    ).padSym(h: 20);
  }
}
