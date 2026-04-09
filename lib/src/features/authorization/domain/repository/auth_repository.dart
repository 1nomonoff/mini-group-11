
import 'package:mini_group_11/src/core/failure/failure.dart';

import '../../../../core/either/either.dart';

abstract class AuthRepository {
  
  Future<Either<Failure, void>> signIn({
    required Map<String, dynamic> userInfo,
  });
}