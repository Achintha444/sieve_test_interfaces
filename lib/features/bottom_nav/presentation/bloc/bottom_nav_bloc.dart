import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sieve_3/core/entities/empty_entity.dart';
import '../../../../core/Usecase/use_case.dart';
import '../../domain/usecases/get_category.dart';
import '../../domain/usecases/get_dashboard.dart';
import '../../domain/usecases/get_laws.dart';
import '../../domain/usecases/get_news_feed.dart';
import '../../domain/usecases/get_tips.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  final GetNewsFeed getNewsFeed;
  final GetCategory getCategory;
  final GetDashboard getDashboard;
  final GetLaws getLaws;
  final GetTips getTips;

  BottomNavBloc(
      {@required this.getNewsFeed,
      @required this.getCategory,
      @required this.getDashboard,
      @required this.getLaws,
      @required this.getTips});

  @override
  BottomNavState get initialState => Initial();

  @override
  Stream<BottomNavState> mapEventToState(
    BottomNavEvent event,
  ) async* {
    if (event is NewsFeedEvent) {
      yield Loading();
      final response = await this.getNewsFeed(NoParams());
      yield response.fold((faliure) => InternetError(), (_) => NewsFeedState());
    } else if (event is CategoryEvent) {
      yield Loading();
      final response = await this.getCategory(NoParams());
      yield response.fold((faliure) => InternetError(), (_) => CategoryState());
    } else if (event is DashboardEvent) {
      yield Loading();
      final response = await this.getDashboard(NoParams());
      yield response.fold((faliure) => InternetError(), (_) => DashboardState());
    } if (event is TipsEvent) {
      yield Loading();
      final response = await this.getTips(NoParams());
      yield response.fold((faliure) => InternetError(), (_) => TipsState());
    } if (event is LawsEvent) {
      yield Loading();
      final response = await this.getLaws(NoParams());
      yield response.fold((faliure) => InternetError(), (_) => LawsState());
    }
  }
}

// Stream<BottomNavState> _bottomNav(
//     BottomNavState state, UseCase<EmptyEntity, NoParams> useCase) async* {
//   yield Loading();
//   final response = await useCase(NoParams());
//   yield response.fold((faliure) => InternetError(), (_) => state);
// }
