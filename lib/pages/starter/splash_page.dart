import 'package:flutter/material.dart';
import '../../config/app_colors.dart';
import '../../config/app_icons.dart';
import '../../controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Center(
        child: Image.asset(AppIcons.appLogo),
      ),
    );
  }
}
