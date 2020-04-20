import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/Platform/network_info.dart';
import '../../../../core/entities/empty_entity.dart';
import '../../../../core/error/Faliure.dart';
import '../../domain/repos/bottom_nav_repo.dart';

class BottomNavRepoImpl extends BottomNavRepo {
  final NetworkInfo networkInfo;

  BottomNavRepoImpl({@required this.networkInfo});

  @override
  Future<Either<Faliure, EmptyEntity>> getCategory() {
    return this._getNav();
  }

  @override
  Future<Either<Faliure, EmptyEntity>> getDashboard() {
    return this._getNav();
  }

  @override
  Future<Either<Faliure, EmptyEntity>> getLaws() {
    return this._getNav();
  }

  @override
  Future<Either<Faliure, EmptyEntity>> getNewsFeed() {
    return this._getNav();
  }

  @override
  Future<Either<Faliure, EmptyEntity>> getTips() {
    return this._getNav();
  }

  Future<Either<Faliure, EmptyEntity>> _getNav() async {
    await Future.delayed(
      Duration(milliseconds: 600),
    );
    if (await networkInfo.isConnected) {
      return Right(EmptyEntity());
    } else {
      return Left(InternetConnectionFaliure());
    }
  }
}
