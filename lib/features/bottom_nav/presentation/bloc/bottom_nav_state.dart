part of 'bottom_nav_bloc.dart';

abstract class BottomNavState extends Equatable {
  BottomNavState([List props = const <dynamic>[]]) : super(props);
}

class Initial extends BottomNavState{}

class Loading extends BottomNavState{}

class NewsFeedState extends BottomNavState{}

class CategoryState extends BottomNavState{}

class DashboardState extends BottomNavState{}

class TipsState extends BottomNavState{}

class LawsState extends BottomNavState{}

class InternetError extends BottomNavState{}