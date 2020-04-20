import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../bloc/bottom_nav_bloc.dart';
import '../widgets/bottom_nav_widget.dart';
import '../widgets/Category/category.dart';
import '../widgets/dashboard.dart';
import '../widgets/inital_state_widget.dart';
import '../widgets/internet_error_widget.dart';
import '../widgets/laws.dart';
import '../widgets/loading_widget.dart';
import '../widgets/news_feed.dart';
import '../widgets/tips.dart';

class BottomNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavBloc>(
      builder: (context) => sl<BottomNavBloc>(),
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: _BlocListner(),
        ),
        bottomNavigationBar: BottomNavWidget(),
      ),
    );
  }
}

class _BlocListner extends StatelessWidget {
  const _BlocListner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      bloc: BlocProvider.of<BottomNavBloc>(context),
      builder: (context, state) {
        if (state is Initial) {
          return InitialStateWidget();
        } else if (state is Loading) {
          return LoadingWidget();
        } else if (state is InternetError) {
          return InternetErrorWidget();
        } else if (state is NewsFeedState) {
          return NewsFeed();
        } else if (state is CategoryState) {
          return Category();
        } else if (state is DashboardState) {
          return Dashboard();
        } else if (state is TipsState) {
          return Tips();
        } else if (state is LawsState) {
          return Laws();
        }
      },
    );
  }
}
