import 'package:dartz/dartz.dart';
import 'package:sieve_3/core/entities/empty_entity.dart';
import 'package:sieve_3/core/error/Faliure.dart';

abstract class BottomNavRepo{
  Future<Either<Faliure,EmptyEntity>> getNewsFeed();
  Future<Either<Faliure,EmptyEntity>> getCategory();
  Future<Either<Faliure,EmptyEntity>> getDashboard();
  Future<Either<Faliure,EmptyEntity>> getTips();
  Future<Either<Faliure,EmptyEntity>> getLaws();
}