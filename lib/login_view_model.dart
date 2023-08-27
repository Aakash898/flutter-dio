import 'package:flutter/material.dart';
import 'package:flutterdioample/login_repository.dart';
import 'login_screen.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _userRepository = LoginRepository();

  Future<ApiResponseStatus> login(String username, String password) async {
    return await _userRepository.login('kminchelle', '0lelplR');

    //
    login("kminchelle","0lelplR");
  }
}