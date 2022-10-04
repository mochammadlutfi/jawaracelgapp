import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidePassword = true;


  // Future<UserModel> login() async {
  //   final email = emailController.text.trim();
  //   final password = passwordController.text.trim();
  //   print(email);
  //   // return auth;
  // }

}