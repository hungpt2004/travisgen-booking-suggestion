import 'package:equatable/equatable.dart';

enum NavBarItem { home, search, favorite, profile, settings }

class NavigationState extends Equatable {
  final NavBarItem selectedItem;

  const NavigationState({this.selectedItem = NavBarItem.home});

  NavigationState copyWith({NavBarItem? selectedItem}) {
    return NavigationState(selectedItem: selectedItem ?? this.selectedItem);
  }

  @override
  List<Object?> get props => [selectedItem];
}
