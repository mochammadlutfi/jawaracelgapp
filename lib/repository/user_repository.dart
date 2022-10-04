
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../models/auth_model.dart';
import '../config/app_config.dart';
import '../core/api_client.dart';

class UserRepository {

  Future<AuthModel?> login(String email, String password) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // return AuthModel.withError(statusCode: CODE_NO_INTERNET, msg: apiUtils.getNetworkError());
    }

    String url = '${AppConfig.baseUrl}/login';

    try {

      final Response response = await apiClient.post(url: url, data : {
        'email' : email,
        'password' : password
      });

       return AuthModel.fromJson(response.data);
    } catch (e) {
      return AuthModel.withError(msg: apiClient.handleError(e));
    }
  }
}