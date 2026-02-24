import 'package:auto_route/auto_route.dart';
import 'routes.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => appRoutes;
}
