import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';
import 'package:mini_group_11/src/core/usecase/usecase.dart';
import 'package:mini_group_11/src/features/authorization/domain/repository/auth_repository.dart';

class AuthSignInUsercase extends UseCase<void, Map<String, dynamic>> {
  AuthRepository authRepository;
  AuthSignInUsercase({required this.authRepository});

  @override
  Future<Either<Failure, void>> call(Map<String, dynamic> params) {
    return authRepository.signIn(userInfo: params);
  }
}

class CheckAuthStatusUsecase extends UseCase<bool, NoParams> {
  final AuthRepository authRepository;

  CheckAuthStatusUsecase({required this.authRepository});

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return authRepository.isLoggedIn();
  }
}
