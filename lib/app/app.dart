import 'dart:async';

import 'package:auto_router_pkg/app/authentication_status.dart';
import 'package:auto_router_pkg/app/cubit/app_cubit.dart';
import 'package:auto_router_pkg/common/constants/device.dart';

import 'package:auto_router_pkg/common/theme/app_theme.dart';
import 'package:auto_router_pkg/common/utils/location_util.dart';
import 'package:auto_router_pkg/di/di.dart';
import 'package:auto_router_pkg/di/modules/local_module.dart';

import 'package:auto_router_pkg/router/app_router.dart';
import 'package:auto_router_pkg/widget/unfocus_wrapper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  StreamSubscription<AuthState>? _authStreamSubscription;
  AppLifecycleListener? _lifecycleListener;

  @override
  void initState() {
    super.initState();

    _authStreamSubscription = getIt.get<AuthStatusStream>().listen((value) => value.dispatch());

    _lifecycleListener = AppLifecycleListener(onResume: _handleAppResume);
  }

  @override
  void dispose() {
    _authStreamSubscription?.cancel();
    _lifecycleListener?.dispose();
    super.dispose();
  }

  /// Handles app resume event to reload location permissions
  void _handleAppResume() {
    _reloadLocationPermission();
  }

  /// Reloads location permission status
  Future<void> _reloadLocationPermission() async {
    try {
      await LocationService().checkPermission();
    } catch (error) {
      debugPrint('Error checking location permission on resume: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWrapper(
      child: ScreenUtilInit(
        designSize: kDeviceSize,
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: false,
        builder: (context, child) {
          return BlocProvider(
            create: (context) => AppCubit(),
            child: MaterialApp.router(
              routerConfig: _appRouter.config(),
              theme: themes[ThemeMode.light]!.themeData,
              darkTheme: themes[ThemeMode.dark]!.themeData,
              themeMode: ThemeMode.light,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              builder: (_, child) {
                return Builder(
                  builder: (context) {
                    return child!;
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
