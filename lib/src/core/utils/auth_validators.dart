class AuthValidators {
  static String? emailValidator(String? content) {
    if (content == null || content.isEmpty) {
      return 'Введите ваш email';
    } else if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(content) ==
        false) {
      return "Введите правильный email [@, gmail.com]";
    }
    return null;
  }

  static String? passwordValidator(String? content) {
    if (content == null || content.isEmpty) {
      return 'Введите пароль';
    } else if (content.length < 8) {
      return 'Пароль должен включать в себя 8 символов!';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) return 'Заполните поле ФИО';
    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) return 'Введите номер телефона';
    return null;
  }

  static String? regionValidator(String? value) {
    if (value == null || value.isEmpty) return 'Введите регион';
    return null;
  }
}