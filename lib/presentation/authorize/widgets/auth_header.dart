import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Header widget for auth screens: optional back arrow + title + subtitle.
class AuthHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final AuthStyle style;
  final bool showBackButton;

  const AuthHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.style,
    this.showBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showBackButton) ...[
          GestureDetector(
            onTap: () => Navigator.of(context).maybePop(),
            child: Container(
              width: 40.w,
              height: 40.w,
              decoration: BoxDecoration(
                border: Border.all(color: style.inputBorder),
                borderRadius: BorderRadius.circular(12.r),
                color: style.inputFill,
              ),
              child: Icon(Icons.arrow_back_ios_new_rounded, size: 16.w, color: style.labelColor),
            ),
          ),
          SizedBox(height: 28.h),
        ],
        Text(title, style: style.titleStyle),
        SizedBox(height: 6.h),
        Text(subtitle, style: style.subtitleStyle),
      ],
    );
  }
}
