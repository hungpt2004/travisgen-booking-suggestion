import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/constants/travel_type.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/travel_type.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/presentation/search/widget/type_travel_item.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TypeTravelSection extends StatefulWidget {
  const TypeTravelSection({super.key});

  @override
  State<TypeTravelSection> createState() => _TypeTravelSectionState();
}

class _TypeTravelSectionState extends State<TypeTravelSection> {
  TravelTypeEnum? selectedTravelType = TravelTypeEnum.chill;

  void onHandleSelectTypeTravel(TravelTypeEnum travelType) {
    setState(() {
      selectedTravelType = travelType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Assets.root.icTicket.svg(width: 30.w, height: 30.w),
              AppSize.w4,
              Text(LocaleKeys.search_travel_style.tr(), style: Fonts.s28w6.copyWith(color: Colors.black)),
            ],
          ).padSym(h: 20),
          AppSize.h4,
          SizedBox(
            height: 20.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: travelTypes.length,
              addAutomaticKeepAlives: true,
              itemBuilder: (context, index) {
                return TypeTravelItem(
                  travelType: travelTypes[index],
                  isSelected: selectedTravelType == TravelTypeEnum.values[index],
                  onTap: () => onHandleSelectTypeTravel(TravelTypeEnum.values[index]),
                );
              },
              separatorBuilder: (context, index) => 12.w.wSpace,
            ),
          ).padSym(h: 20),
        ],
      ),
    );
  }
}
