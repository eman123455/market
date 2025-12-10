part of 'nav_bar_cubit.dart';

@immutable
sealed class NavBarState {}

final class NavBarInitial extends NavBarState {}

final class IndexChanged extends NavBarState {
  final int currentIndex;

  IndexChanged({required this.currentIndex});
}
