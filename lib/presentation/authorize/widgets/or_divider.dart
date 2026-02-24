import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// "── or ──" divider between primary button and social buttons.
class OrDivider extends StatelessWidget {
  final AuthStyle style;
  const OrDivider({super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: style.dividerColor, thickness: 1)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Text('auth.or'.tr(), style: style.orDividerStyle),
        ),
        Expanded(child: Divider(color: style.dividerColor, thickness: 1)),
      ],
    );
  }
}
