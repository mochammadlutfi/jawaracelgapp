import 'package:dio/dio.dart';
import '../config/app_config.dart';
import '../core/dio_client.dart';

class UserService {
  final DioClient dioClient;

  UserService({required this.dioClient});

  
  Future<Response> login(String email, String password) async {
    try {
      final Response response = await dioClient.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> loginUser(String name, String job) async {
    try {
      final Response response = await dioClient.post(
        AppConfig.users,
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> addUserApi(String email, String password) async {
    try {
      final Response response = await dioClient.post(
        AppConfig.users,
        data: {
          'email': email,
          'password': password,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> getUsersApi() async {
    try {
      final Response response = await dioClient.get(AppConfig.users);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> updateUserApi(int id, String name, String job) async {
    try {
      final Response response = await dioClient.put(
        AppConfig.users + '/$id',
        data: {
          'name': name,
          'job': job,
        },
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteUserApi(int id) async {
    try {
      await dioClient.delete(AppConfig.users + '/$id');
    } catch (e) {
      rethrow;
    }
  }
}