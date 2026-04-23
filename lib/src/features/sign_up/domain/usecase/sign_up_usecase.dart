import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';
import 'package:mini_group_11/src/core/usecase/usecase.dart';
import 'package:mini_group_11/src/features/sign_up/domain/repository/sign_up_repository.dart';

class SignUpUsecase extends UseCase<void, Map<String, dynamic>> {
  final SignUpRepository signUpRepository;
  SignUpUsecase({required this.signUpRepository});

  @override
  Future<Either<Failure, void>> call(Map<String, dynamic> params) {
    return signUpRepository.signUp(userInfo: params);
  }
}
