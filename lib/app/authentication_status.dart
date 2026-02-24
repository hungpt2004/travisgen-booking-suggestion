import 'package:auto_router_pkg/data/model/user.dart';

sealed class AuthState {
  const AuthState();
}

class AuthInitialState extends AuthState {
  const AuthInitialState();
}

class AuthenticatedState extends AuthState {
  final User user;

  const AuthenticatedState({required this.user});
}

class UnauthenticatedState extends AuthState {
  const UnauthenticatedState();
}
