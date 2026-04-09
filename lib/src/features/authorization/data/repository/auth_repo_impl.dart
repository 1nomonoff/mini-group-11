

import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';
import 'package:mini_group_11/src/features/authorization/data/source/auth_data_source.dart';
import 'package:mini_group_11/src/features/authorization/domain/repository/auth_repository.dart';

class AuthRepoImpl extends AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepoImpl({required this.authDataSource});

   @override
  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final result = await authDataSource.signIn(userInfo: userInfo);
      if (result.isRight) {
        return Right('');
      } else {
        throw Exception();
      }
    } catch (e) {
      return Left(Failure());
    }
  }
}