import 'package:encrypt_shared_preferences/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  late final EncryptedSharedPreferences pref;
  final String _kRememberKey = 'rememberme';
  final String _kEmailKey = 'email';
  final String _kPasswordKey = 'password';
  StorageService() {
    SharedPreferences.getInstance()
        .then((_) => pref = EncryptedSharedPreferences.getInstance());
  }

  Future<void> setRemember(bool value) async {
    await pref.setBoolean(_kRememberKey, value);
  }

  Future<void> setEmail(String email) async {
    await pref.setString(_kEmailKey, email);
  }

  Future<void> setPassword(String password) async {
    await pref.setString(_kPasswordKey, password);
  }

  bool getRemember() {
    return pref.getBoolean(_kRememberKey) ?? false;
  }

  Future<String?> getEmail() async {
    return pref.getString(_kEmailKey);
  }

  Future<String?> getPassword() async {
    return pref.getString(_kPasswordKey);
  }
}
