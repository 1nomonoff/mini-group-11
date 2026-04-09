import 'package:bloc/bloc.dart';
import 'package:mini_group_11/src/features/authorization/domain/usecase/auth_sign_in_usecase.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
   
  AuthSignInUsercase authSignInUsercase;

  AuthCubit({
    
    required this.authSignInUsercase,
  }) : super(AuthState(status: AuthStatus.initial));

    Future<void> signIn({required Map<String, dynamic> userInfo}) async {
    emit(AuthState(status: AuthStatus.loading));
    await Future.delayed(Duration(seconds: 1));
    try {
      final result = await authSignInUsercase.call(userInfo);
      if (result.isRight) {
        emit(AuthState(status: AuthStatus.loaded));
      } else {
        throw Exception();
      }
    } catch (e) {
      emit(AuthState(status: AuthStatus.error));
    }
  }
}