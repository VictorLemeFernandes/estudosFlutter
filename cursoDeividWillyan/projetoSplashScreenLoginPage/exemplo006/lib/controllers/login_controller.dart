import 'package:exemplo006/services/prefs_service.dart';
import 'package:flutter/cupertino.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(const Duration(seconds: 3));
    inLoader.value = false;
    if (_login == 'admin' && _password == '123') {
      PrefsService.save(_login!);
      return true;
    } else {
      return false;
    }
  }
}
