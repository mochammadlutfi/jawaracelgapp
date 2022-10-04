import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jawaracaleg/config/app_themes.dart';
import 'package:jawaracaleg/controllers/auth_controller.dart';
import 'package:jawaracaleg/core/routes.dart';
import 'package:jawaracaleg/pages/home/home_main_page.dart';

import 'pages/auth/login_page.dart';
// ignore: unused_import
import 'pages/starter/splash_page.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: authC.autoLogin(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Obx(
            () => GetMaterialApp(
              getPages: RoutePage.pages,
              debugShowCheckedModeBanner: false,
              home: authC.isAuth.isTrue ? HomeMainPage() : const LoginPage(),
              theme: AppTheme.lightTheme,
              // darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
            ),
          );
        }
        return const MaterialApp(
          home: Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
