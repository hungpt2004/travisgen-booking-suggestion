import 'package:flutter_bloc/flutter_bloc.dart';
import 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState());

  void changeTab(NavBarItem item) {
    if (state.selectedItem != item) {
      emit(state.copyWith(selectedItem: item));
    }
  }

  void navigateToHome() => changeTab(NavBarItem.home);
  void navigateToSearch() => changeTab(NavBarItem.search);
  void navigateToFavorite() => changeTab(NavBarItem.favorite);
  void navigateToProfile() => changeTab(NavBarItem.profile);
  void navigateToSettings() => changeTab(NavBarItem.settings);
}
