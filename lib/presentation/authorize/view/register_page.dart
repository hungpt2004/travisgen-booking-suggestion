import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/presentation/authorize/auth_style.dart';
import 'package:auto_router_pkg/presentation/authorize/widgets/auth_field.dart';
import 'package:auto_router_pkg/presentation/authorize/widgets/auth_header.dart';
import 'package:auto_router_pkg/presentation/authorize/widgets/or_divider.dart';
import 'package:auto_router_pkg/presentation/authorize/widgets/social_buttons.dart';
import 'package:auto_router_pkg/router/app_router.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;
  bool _agreedToTerms = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  void _onRegister() {
    if (!_agreedToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Vui lòng đồng ý điều khoản')));
      return;
    }
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: call bloc/cubit
      context.router.replace(const OnboardingRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).extension<AuthStyle>()!;
    final h = AuthStyle.horizontalPadding;

    return Scaffold(
      backgroundColor: style.background,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                AuthHeader(
                  title: 'auth.register_title'.tr(),
                  subtitle: 'auth.register_subtitle'.tr(),
                  style: style,
                  showBackButton: true,
                ),
                SizedBox(height: 36.h),

                // Full name
                AuthField(
                  controller: _nameCtrl,
                  label: 'auth.full_name'.tr(),
                  hint: 'auth.full_name_hint'.tr(),
                  style: style,
                  validator: (v) => (v == null || v.trim().isEmpty) ? 'Vui lòng nhập họ tên' : null,
                ),
                SizedBox(height: 18.h),

                // Email
                AuthField(
                  controller: _emailCtrl,
                  label: 'auth.email'.tr(),
                  hint: 'auth.email_hint'.tr(),
                  keyboardType: TextInputType.emailAddress,
                  style: style,
                  validator: (v) => (v == null || !v.contains('@')) ? 'Email không hợp lệ' : null,
                ),
                SizedBox(height: 18.h),

                // Password
                AuthField(
                  controller: _passwordCtrl,
                  label: 'auth.password'.tr(),
                  hint: 'auth.password_hint'.tr(),
                  obscureText: _obscurePassword,
                  style: style,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: style.hintColor,
                      size: 20.w,
                    ),
                    onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                  ),
                  validator: (v) => (v == null || v.length < 6) ? 'Mật khẩu ít nhất 6 ký tự' : null,
                ),
                SizedBox(height: 18.h),

                // Confirm password
                AuthField(
                  controller: _confirmCtrl,
                  label: 'auth.confirm_password'.tr(),
                  hint: 'auth.confirm_password_hint'.tr(),
                  obscureText: _obscureConfirm,
                  style: style,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirm ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: style.hintColor,
                      size: 20.w,
                    ),
                    onPressed: () => setState(() => _obscureConfirm = !_obscureConfirm),
                  ),
                  validator: (v) => v != _passwordCtrl.text ? 'Mật khẩu không khớp' : null,
                ),
                SizedBox(height: 20.h),

                // Terms checkbox
                _TermsCheckbox(
                  value: _agreedToTerms,
                  style: style,
                  onChanged: (v) => setState(() => _agreedToTerms = v ?? false),
                ),
                SizedBox(height: 28.h),

                // Register button
                _PrimaryButton(label: 'auth.register_button'.tr(), style: style, onTap: _onRegister),
                SizedBox(height: 28.h),

                OrDivider(style: style),
                SizedBox(height: 24.h),

                SocialButtons(style: style),
                SizedBox(height: 36.h),

                // → Login
                _BottomPrompt(
                  questionText: 'auth.have_account'.tr(),
                  actionText: 'auth.sign_in'.tr(),
                  style: style,
                  onTap: () => context.router.replace(const LoginRoute()),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Terms & Conditions checkbox
// ─────────────────────────────────────────────────────────
class _TermsCheckbox extends StatelessWidget {
  final bool value;
  final AuthStyle style;
  final ValueChanged<bool?> onChanged;
  const _TermsCheckbox({required this.value, required this.style, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24.w,
          height: 24.w,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: style.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(child: Text('auth.terms'.tr(), style: style.subtitleStyle, maxLines: 2)),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────
// Primary action button
// ─────────────────────────────────────────────────────────
class _PrimaryButton extends StatelessWidget {
  final String label;
  final AuthStyle style;
  final VoidCallback onTap;
  const _PrimaryButton({required this.label, required this.style, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AuthStyle.buttonHeight,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: style.primaryButtonDecoration,
        child: Text(label, style: style.primaryButtonStyle),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────
// Bottom prompt: "Đã có tài khoản? Đăng nhập"
// ─────────────────────────────────────────────────────────
class _BottomPrompt extends StatelessWidget {
  final String questionText;
  final String actionText;
  final AuthStyle style;
  final VoidCallback onTap;
  const _BottomPrompt({required this.questionText, required this.actionText, required this.style, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(questionText, style: style.subtitleStyle),
        SizedBox(width: 4.w),
        GestureDetector(
          onTap: onTap,
          child: Text(actionText, style: style.linkStyle),
        ),
      ],
    );
  }
}
