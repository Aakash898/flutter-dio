import 'package:flutter/material.dart';
import 'package:flutterdioample/repository/login_repository.dart';
import '../views/login/login_screen.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _userRepository = LoginRepository();

  Future<ApiResponseStatus> login(String username, String password) async {
    return await _userRepository.login('kminchelle', '0lelplR');
  }
}