import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../../core/Usecase/use_case.dart';
import '../../../../core/entities/empty_entity.dart';
import '../../../../core/error/Faliure.dart';
import '../repos/bottom_nav_repo.dart';

class GetCategory extends UseCase<EmptyEntity,NoParams>{

  final BottomNavRepo bottomNavRepo;

  GetCategory({@required this.bottomNavRepo});

  @override
  Future<Either<Faliure, EmptyEntity>> call(NoParams params) async {
    return await this.bottomNavRepo.getCategory();
  }
  
}