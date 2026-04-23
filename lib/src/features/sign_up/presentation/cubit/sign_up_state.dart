part of 'sign_up_cubit.dart';

class SignUpState {
  SignUpStatus status;
  List<String> errors;
  SignUpState({this.status = SignUpStatus.initial}) : errors = [];
}

enum SignUpStatus { error, loading, loaded, initial }
