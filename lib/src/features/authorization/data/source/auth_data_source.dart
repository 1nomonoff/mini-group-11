import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';

abstract class AuthDataSource {
  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  });
}