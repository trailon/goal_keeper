import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static late SharedPreferences pref;
  static final String _kRememberKey = 'remember';
  static final String _kAuthAskedOnceKey = 'authaskedonce';
  static final String _kEmailKey = 'email';

  static Future<void> reload() async => pref.reload();

  static Future<void> setRemember(bool value) async =>
      await pref.setBool(_kRememberKey, value);

  static Future<void> setEmail(String email) async =>
      await pref.setString(_kEmailKey, email);

  static bool getRemember() => pref.getBool(_kRememberKey) ?? false;

  static Future<void> setAskedForAuthOnce() async =>
      await pref.setBool(_kAuthAskedOnceKey, true);

  static bool getAskedForAuthOnce() =>
      pref.getBool(_kAuthAskedOnceKey) ?? false;

  static Future<String?> getEmail() async => pref.getString(_kEmailKey);
}
