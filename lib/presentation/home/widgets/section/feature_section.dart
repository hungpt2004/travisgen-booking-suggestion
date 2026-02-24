import 'package:auto_router_pkg/data/model/feature.dart';
import 'package:auto_router_pkg/presentation/home/widgets/feature_item.dart';
import 'package:auto_router_pkg/widget/extensions/gap_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: features.length,
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        separatorBuilder: (context, index) => 80.w.wSpace,
        itemBuilder: (context, index) => FeatureItem(feature: features[index]),
      ),
    ).padOnly(l: 26.w, t: 30.w);
  }
}
