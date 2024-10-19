import 'package:goal_keeper/generated/l10n.dart';
import 'package:string_validator/string_validator.dart';

class Validators {
  static String? userNameValidator(String userName) {
    if (isAlphanumeric(userName) && userName.length >= 2) return null;
    return S.current.enter_valid_username;
  }

  static String? emailValidator(String email) {
    if (isEmail(email)) return null;
    return S.current.enter_valid_email;
  }

  static String? nameValidator(String name) {
    if (isAlpha(name) && name.isNotEmpty) return null;
    return S.current.enter_valid_name;
  }

  static String? passwordValidator(String password) {
    if (isLength(password, 6)) return null;
    return S.current.password_length_checker;
  }
}
