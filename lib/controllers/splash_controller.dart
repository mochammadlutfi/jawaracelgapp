import 'dart:async';

import '../pages/auth/login_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Timer(
      const Duration(seconds: 3),
      () => Get.off(
        const LoginPage(),
      ),
    );
  }
}
