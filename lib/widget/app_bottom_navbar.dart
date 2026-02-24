import 'dart:ui';
import 'package:auto_router_pkg/common/theme/color.dart';
import 'package:auto_router_pkg/generated/assets.gen.dart';
import 'package:auto_router_pkg/generated/locale_keys.g.dart';
import 'package:auto_router_pkg/presentation/root/cubit/navigation_cubit.dart';
import 'package:auto_router_pkg/presentation/root/cubit/navigation_state.dart';
import 'package:auto_router_pkg/widget/bottom_navbar_item.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20.w,
      right: 20.w,
      bottom: 20.h,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColor.primaryDeepBlue.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(100.r),
              border: Border.all(color: Colors.white.withValues(alpha: 0.2), width: 1.5),
              boxShadow: [
                BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 20, offset: const Offset(0, -5)),
              ],
            ),
            child: BlocBuilder<NavigationCubit, NavigationState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavBarItem(
                      icon: Assets.root.icHome.path,
                      label: LocaleKeys.common_home.tr(),
                      isSelected: state.selectedItem == NavBarItem.home,
                      onTap: () => context.read<NavigationCubit>().navigateToHome(),
                    ),
                    BottomNavBarItem(
                      icon: Assets.root.icSearch.path,
                      label: LocaleKeys.common_search.tr(),
                      isSelected: state.selectedItem == NavBarItem.search,
                      onTap: () => context.read<NavigationCubit>().navigateToSearch(),
                    ),
                    BottomNavBarItem(
                      icon: Assets.root.icHeart.path,
                      label: LocaleKeys.common_favorite.tr(),
                      isSelected: state.selectedItem == NavBarItem.favorite,
                      onTap: () => context.read<NavigationCubit>().navigateToFavorite(),
                    ),
                    BottomNavBarItem(
                      icon: Assets.root.icPerson.path,
                      label: LocaleKeys.common_profile.tr(),
                      isSelected: state.selectedItem == NavBarItem.profile,
                      onTap: () => context.read<NavigationCubit>().navigateToProfile(),
                    ),
                    BottomNavBarItem(
                      icon: Assets.root.icSetting.path,
                      label: LocaleKeys.common_settings.tr(),
                      isSelected: state.selectedItem == NavBarItem.settings,
                      onTap: () => context.read<NavigationCubit>().navigateToSettings(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
