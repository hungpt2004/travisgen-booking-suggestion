import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Google + Apple social sign-in buttons.
class SocialButtons extends StatelessWidget {
  final AuthStyle style;
  const SocialButtons({super.key, required this.style});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SocialButton(label: 'auth.google'.tr(), style: style, iconWidget: _GoogleIcon(), onTap: () {}),
        SizedBox(height: 14.h),
        _SocialButton(
          label: 'auth.apple'.tr(),
          style: style,
          iconWidget: Icon(Icons.apple, size: 22.w, color: style.labelColor),
          onTap: () {},
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String label;
  final AuthStyle style;
  final Widget iconWidget;
  final VoidCallback onTap;

  const _SocialButton({required this.label, required this.style, required this.iconWidget, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AuthStyle.buttonHeight,
        decoration: BoxDecoration(
          color: style.inputFill,
          borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
          border: Border.all(color: style.socialButtonBorder),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget,
            SizedBox(width: 12.w),
            Text(label, style: style.labelStyle),
          ],
        ),
      ),
    );
  }
}

/// Manually drawn Google "G" icon with brand colors.
class _GoogleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 22.w,
      child: CustomPaint(painter: _GooglePainter()),
    );
  }
}

class _GooglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final r = size.width / 2;

    // Draw coloured arcs
    final segments = [
      (0.0, 0.5 * 3.14159, const Color(0xFF4285F4)), // blue — right top
      (0.5 * 3.14159, 0.5 * 3.14159, const Color(0xFF34A853)), // green — bottom
      (1.0 * 3.14159, 0.5 * 3.14159, const Color(0xFFFBBC05)), // yellow — left
      (1.5 * 3.14159, 0.5 * 3.14159, const Color(0xFFEA4335)), // red — top
    ];

    for (final (start, sweep, color) in segments) {
      final paint = Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.18;
      canvas.drawArc(Rect.fromCircle(center: center, radius: r * 0.72), start, sweep, false, paint);
    }

    // White horizontal bar for the "G" cutout
    final barPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.2;
    canvas.drawLine(Offset(center.dx, center.dy), Offset(center.dx + r * 0.72, center.dy), barPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
