import 'package:dartz/dartz.dart';

import '../error/Faliure.dart';

class InputConverter {
  Either<Faliure, String> check(String str) {
    try {
      if (str.isEmpty) throw FormatException();
      final alphanumeric = RegExp('[a-zA-Z]');
      final response = alphanumeric.hasMatch(str);
      if (!response) throw FormatException();
      return Right(str);
    } on FormatException {
      return Left(InvalidInputFaliure());
    }
  }
}
