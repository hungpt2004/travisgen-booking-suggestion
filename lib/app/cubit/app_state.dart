part of 'app_cubit.dart';

class AppState extends Equatable {
  final User? user;
  final Position? currentPosition;

  const AppState({this.user, this.currentPosition});

  @override
  List<Object?> get props => [user, currentPosition];

  AppState copyWith({User? user, Position? currentPosition}) {
    return AppState(user: user ?? this.user, currentPosition: currentPosition ?? this.currentPosition);
  }
}
