class EmailValidator {
  static String? emailValidator(String? content) {
    if (content == null || content.isEmpty) {
      return 'enter your email';
    } else if (RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(content) ==
        false) {
      return "enter right email [@, gmail.com]";
    }
    return null;
  }
}
