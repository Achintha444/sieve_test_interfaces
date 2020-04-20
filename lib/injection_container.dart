import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';

import 'core/Platform/network_info.dart';
import 'features/bottom_nav/data/repos/bottom_nav_repo_impl.dart';
import 'features/bottom_nav/domain/repos/bottom_nav_repo.dart';
import 'features/bottom_nav/domain/usecases/get_category.dart';
import 'features/bottom_nav/domain/usecases/get_dashboard.dart';
import 'features/bottom_nav/domain/usecases/get_laws.dart';
import 'features/bottom_nav/domain/usecases/get_news_feed.dart';
import 'features/bottom_nav/domain/usecases/get_tips.dart';
import 'features/bottom_nav/presentation/bloc/bottom_nav_bloc.dart';

final sl = GetIt.instance;
Future<void> init() async {
  //! Features - bottom_nav

  //* Bloc
  sl.registerFactory(
    () => BottomNavBloc(
      getNewsFeed: sl(),
      getCategory: sl(),
      getDashboard: sl(),
      getTips: sl(),
      getLaws: sl(),
    ),
  );

  //* usecases
  sl.registerLazySingleton(
    () => GetNewsFeed(
      bottomNavRepo: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetCategory(
      bottomNavRepo: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetDashboard(
      bottomNavRepo: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetLaws(
      bottomNavRepo: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => GetTips(
      bottomNavRepo: sl(),
    ),
  );

  //* repo

  sl.registerLazySingleton<BottomNavRepo>(
    () => BottomNavRepoImpl(
      networkInfo: sl(),
    ),
  );

  //! Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External Libraries
  sl.registerLazySingleton(() => DataConnectionChecker());
}
