
import 'user_model.dart';

class AuthModel {
  bool? result;
  String? message;
  String? accessToken;
  String? tokenType;
  String? expiresAt;
  UserModel? user;

  AuthModel(
      {this.result,
      this.message,
      this.accessToken,
      this.tokenType,
      this.expiresAt,
      this.user});

  AuthModel.withError({bool result = false, String? msg})
      : result = result,
        message = msg;

  AuthModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message'];
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresAt = json['expires_at'];
    user = json['user'] != null ? UserModel.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['result'] = result;
    data['message'] = message;
    data['access_token'] = accessToken;
    data['token_type'] = tokenType;
    data['expires_at'] = expiresAt;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}