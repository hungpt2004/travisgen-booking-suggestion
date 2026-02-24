import 'package:auto_router_pkg/data/model/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void setUser(User user) {
    emit(state.copyWith(user: user));
  }

  Future<void> getCurrentPosition() async {
    try {
      final position = await Geolocator.getCurrentPosition();
      emit(state.copyWith(currentPosition: position));
    } catch (_) {}
  }
}
