import 'package:dio/dio.dart';
import 'login_screen.dart';

class LoginRepository {
  final Dio _dio = Dio();

  Future<ApiResponseStatus> login(String username, String password) async {
    try {
      var response = await _dio.post('https://dummyjson.com/auth/login', data: {
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