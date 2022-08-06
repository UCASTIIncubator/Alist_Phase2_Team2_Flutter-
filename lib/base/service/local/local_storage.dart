import 'package:hive_flutter/hive_flutter.dart';

class HiveController {
  static HiveController instance = HiveController._();

  HiveController._();

  factory HiveController() {
    return instance;
  }

  late final userDataBox;
  late final settingsBox;

  Future<void> initHive() async {
    await Hive.initFlutter();
    userDataBox = await Hive.openBox('userData');
    settingsBox = await Hive.openBox('settings');
  }

  // setting
  void setLanguage(String languageCode) async {
    return settingsBox.put('language_code', languageCode);
  }

  String get languageCode =>
      settingsBox.get('language_code', defaultValue: 'ar');

  bool get keepSignIn => settingsBox.get('keep_sign_in', defaultValue: false);

  // user date

  void setToken(String token) async {
    return userDataBox.put('token', token);
  }

  void setUserId(String id) async {
    return userDataBox.put('user_id', id);
  }

  String get token => userDataBox.get('token', defaultValue: '');

  String get userId => userDataBox.get('user_id', defaultValue: '');

  Future<bool> logout() async {
    return await userDataBox.clear();
  }
}
