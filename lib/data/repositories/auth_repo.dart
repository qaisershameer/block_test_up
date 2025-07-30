import 'package:block_test/data/services/api_service.dart';
import 'package:dio/dio.dart';

class AuthRepo {
  final _apiService = ApiServices();

  /// [Login] - Function to login the user
  Future<Response> loginUser(String userName, String password) async {
    try {
      Response response = await _apiService.postApi('https://dummyjson.com/auth/login', {'username': userName, 'password': password});

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
