import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';
import 'package:mini_group_11/src/features/sign_up/data/source/sign_up_data_source.dart';
import 'package:mini_group_11/src/features/sign_up/domain/repository/sign_up_repository.dart';

class SignUpRepositoryImpl extends SignUpRepository {
  final SignUpDataSource signUpDataSource;
  SignUpRepositoryImpl({required this.signUpDataSource});

  @override
  Future<Either<Failure, void>> signUp({
    required Map<String, dynamic> userInfo,
  }) async {
    try {
      final result = await signUpDataSource.signUp(userInfo: userInfo);
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
