import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jawaracaleg/models/auth_model.dart';
import 'package:jawaracaleg/models/user_model.dart';
import 'package:logger/logger.dart';


class HomeController extends GetxController {
  RxInt tabIndex = 0.obs;
  var auth = AuthModel().obs;
  final user = UserModel().obs;
  GetStorage box = GetStorage();
  Map<String, dynamic> userSession = GetStorage().read('auth');

  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }

  
  void checkAuth(){
    Logger(printer: PrettyPrinter(colors: true)).v(userSession['user']['name']);
  }

  @override
  void onInit() async {
    super.onInit();

    final box = GetStorage();
    if (box.read("auth") != null) {
    }
  }

}