import 'package:auto_router_pkg/common/constants/size.dart';
import 'package:auto_router_pkg/common/theme/text_styles.dart';
import 'package:auto_router_pkg/data/model/feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({super.key, required this.feature});

  final Feature feature;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: 110.w,
            height: 110.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(shape: BoxShape.circle, color: feature.color.withValues(alpha: 0.05)),
            // child: SvgPicture.asset(
            //   feature.url,
            //   width: 20.w,
            //   height: 20.w,
            //   colorFilter: ColorFilter.mode(feature.color, BlendMode.srcIn),
            // ),
          ),
          AppSize.h4,
          Text(feature.title, style: Fonts.s24w5.copyWith(color: Colors.black, height: 1)),
        ],
      ),
    );
  }
}
