import 'package:bloc/bloc.dart';
import 'package:mini_group_11/src/features/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  void signUp({
    required String email,
    required String phone,
    required String name,
    required String region,
    required String password,
    required String confirmPassword,
    required bool isChecked,
    required bool isChecked1,
  }) {
    final List<String> errors = [];

    if (email.isEmpty) errors.add('Поле Email не может быть пустым');
    if (name.isEmpty) errors.add('Поле ФИО не может быть пустым');
    if (phone.isEmpty) errors.add('Поле Номер телефона не может быть пустым');
    if (region.isEmpty) errors.add('Поле Регион не может быть пустым');
    if (password.isEmpty) errors.add('Поле Пароль не может быть пустым');
    if (confirmPassword.isEmpty) errors.add('Поле Подтвердите пароль не может быть пустым');
    if (password != confirmPassword) errors.add('Пароли не совпадают');
    if (!isChecked) errors.add('Вы должны согласиться с условиями обслуживания');
    if (!isChecked1) errors.add('Вы должны согласиться с обработкой персональных данных');

    if (errors.isNotEmpty) {
      emit(SignUpError(errors));
      return;
    }

    emit(SignUpSuccess());
  }
}