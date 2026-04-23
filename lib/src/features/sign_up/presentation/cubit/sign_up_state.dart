abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpError extends SignUpState {
  final List<String> errors;
  SignUpError(this.errors);
}

class SignUpSuccess extends SignUpState {}