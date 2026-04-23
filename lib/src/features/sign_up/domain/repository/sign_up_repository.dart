import 'package:mini_group_11/src/core/either/either.dart';
import 'package:mini_group_11/src/core/failure/failure.dart';

abstract class SignUpRepository {
  Future<Either<Failure, void>> signUp({
    required Map<String, dynamic> userInfo,
  });
}
