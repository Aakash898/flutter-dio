import 'package:dio/dio.dart';
import 'package:flutterdioample/resources/app_urls.dart';
import '../views/login/login_screen.dart';

class LoginRepository {
  final Dio _dio = Dio();

  Future<ApiResponseStatus> login(String username, String password) async {
    try {
      var response = await _dio.post(AppUrl.loginUrl, data: {
        "username": username,
        "password": password,
      });

      if (response.statusCode == 200) {
        return ApiResponseStatus.success;
      } else {
        return ApiResponseStatus.error;
      }
    } catch (error) {
      return ApiResponseStatus.error;
    }
  }
}