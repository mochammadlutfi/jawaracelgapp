import 'package:get/get.dart';

import '../controllers/home_binding.dart';
import '../pages/auth/login_page.dart';
import '../pages/home/home_main_page.dart';
import '../pages/home/home_page.dart';
import '../pages/starter/splash_page.dart';

import '../pages/pendukung/pendukung_list_page.dart';
import '../pages/relawan/relawan_list_page.dart';

class RoutePage {
  static final pages = [
    GetPage(
      name: '/splash',
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
    ),
    GetPage(
      name: '/',
      page: () => HomeMainPage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),

    GetPage(
      name: '/pendukung',
      page: () => PendukungListPage(),
    ),
    GetPage(
      name: '/relawan',
      page: () => RelawanListPage(),
    ),
  ];
}