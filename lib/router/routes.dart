import 'package:auto_route/auto_route.dart';
import 'package:auto_router_pkg/router/app_router.gr.dart';

final splashPath = '/';
final loginPath = '/login';
final registerPath = '/register';
final onboardingPath = '/onboarding';
final rootPath = '/root';
final homePath = '/home';
final profilePath = '/profile';
final settingPath = '/settings';
final searchPath = '/search';

final appRoutes = <AutoRoute>[
  AutoRoute(page: SplashRoute.page, initial: true, path: splashPath),
  AutoRoute(page: LoginRoute.page, path: loginPath),
  AutoRoute(page: RegisterRoute.page, path: registerPath),
  AutoRoute(page: OnboardingRoute.page, path: onboardingPath),
  AutoRoute(page: RootRoute.page, path: rootPath),
  AutoRoute(page: HomeRoute.page, path: homePath),
  AutoRoute(page: SearchRoute.page, path: searchPath),
  AutoRoute(page: ProfileRoute.page, path: profilePath),
  AutoRoute(page: SettingRoute.page, path: settingPath),
];
