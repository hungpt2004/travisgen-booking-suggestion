import 'package:auto_router_pkg/app/authentication_status.dart';
import 'package:auto_router_pkg/common/constants/hive_keys.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

extension UserAuthStateExt on AuthState {
  void dispatch() {
    switch (this) {
      case AuthenticatedState(user: final user):
        // getIt.get<WsClient>().init();
        // FcmService().listenNotificationPayload();
        // AppRouter().router.goNamed(AppRouter.root, extra: user);
        debugPrint('Đang ở đây 1. ');
      case UnauthenticatedState():
      // getIt.get<WsClient>().dispose();
      // getIt.get<UserRepository>().logout();
      // FcmService().dispose();
      // AppRouter().router.goNamed(AppRouter.authorize);
      default:
        break;
    }
  }
}

typedef AuthStatusStream = BehaviorSubject<AuthState>;

@module
abstract class LocalModule {
  @Named(HiveKeys.authBox)
  @singleton
  @preResolve
  Future<Box<dynamic>> getAuthBox() {
    return Hive.openBox(HiveKeys.authBox);
  }

  @singleton
  AuthStatusStream get authStream => AuthStatusStream.seeded(const AuthInitialState());
}
