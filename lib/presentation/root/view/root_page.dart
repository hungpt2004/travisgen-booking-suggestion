import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/presentation/home/view/home_page.dart';
import 'package:auto_router_pkg/presentation/search/search_page.dart';
import 'package:auto_router_pkg/presentation/profile/profile_page.dart';
import 'package:auto_router_pkg/presentation/root/cubit/navigation_cubit.dart';
import 'package:auto_router_pkg/presentation/root/cubit/navigation_state.dart';
import 'package:auto_router_pkg/presentation/settings/setting_page.dart';
import 'package:auto_router_pkg/widget/app_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => NavigationCubit(), child: const RootView());
  }
}

class RootView extends StatelessWidget {
  const RootView({super.key});

  Widget _getPageForNavItem(NavBarItem item) {
    switch (item) {
      case NavBarItem.home:
        return const HomePage();
      case NavBarItem.search:
        return const SearchPage();
      case NavBarItem.favorite:
        return const FavoritePage();
      case NavBarItem.profile:
        return const ProfilePage();
      case NavBarItem.settings:
        return const SettingPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
              return _getPageForNavItem(state.selectedItem);
            },
          ),
          const AppBottomNavBar(),
        ],
      ),
    );
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Favorite Page')));
  }
}
