part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent extends Equatable {
  BottomNavEvent([List props = const <dynamic>[]]) : super(props);
}

class NewsFeedEvent extends BottomNavEvent {}

class CategoryEvent extends BottomNavEvent {}

class DashboardEvent extends BottomNavEvent {}

class TipsEvent extends BottomNavEvent {}

class LawsEvent extends BottomNavEvent {}
