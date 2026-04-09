
part of 'auth_cubit.dart';


class AuthState {
  AuthStatus status;
  AuthState({this.status = AuthStatus.initial});
}

enum AuthStatus { error, loading, loaded, initial }