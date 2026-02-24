import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Reusable labeled text field for auth screens.
class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final AuthStyle style;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  const AuthField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    required this.style,
    this.obscureText = false,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: style.labelStyle),
        SizedBox(height: 8.h),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          style: style.inputStyle,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: style.hintStyle,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: style.inputFill,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
              borderSide: BorderSide(color: style.inputBorder),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
              borderSide: BorderSide(color: style.inputBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
              borderSide: BorderSide(color: style.primary, width: 1.5),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
              borderSide: BorderSide(color: style.errorColor),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AuthStyle.borderRadius),
              borderSide: BorderSide(color: style.errorColor, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
