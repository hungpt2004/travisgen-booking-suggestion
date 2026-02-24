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
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  void _onLogin() {
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
                AuthHeader(title: 'auth.login_title'.tr(), subtitle: 'auth.login_subtitle'.tr(), style: style),
                SizedBox(height: 36.h),

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
                SizedBox(height: 8.h),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('auth.forgot_password'.tr(), style: style.linkStyle),
                  ),
                ),
                SizedBox(height: 28.h),

                // Login button
                _PrimaryButton(label: 'auth.login_button'.tr(), style: style, onTap: _onLogin),
                SizedBox(height: 28.h),

                OrDivider(style: style),
                SizedBox(height: 24.h),

                SocialButtons(style: style),
                SizedBox(height: 36.h),

                // → Register
                _BottomPrompt(
                  questionText: 'auth.no_account'.tr(),
                  actionText: 'auth.sign_up'.tr(),
                  style: style,
                  onTap: () => context.router.replace(const RegisterRoute()),
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
// Bottom prompt: "Chưa có tài khoản? Đăng ký"
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
