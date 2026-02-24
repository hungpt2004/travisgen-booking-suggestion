import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/router/app_router.gr.dart';
import 'package:flutter/material.dart';

extension NavigationX on BuildContext {
  void goToProfile() {
    router.push(ProfileRoute());
  }

  void goToSetting() {
    router.push(const SettingRoute());
  }

  void goToHome() {
    router.push(const HomeRoute());
  }

  void goToSearch() {
    router.push(const SearchRoute());
  }

  void goToOnboarding() {
    router.push(const OnboardingRoute());
  }

  void back() {
    router.pop();
  }
}
