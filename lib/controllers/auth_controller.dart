import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jawaracaleg/models/auth_model.dart';
import 'package:jawaracaleg/repository/user_repository.dart';
import '../core/cache_manager.dart';


class AuthController extends GetxController with CacheManager {
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  late final UserRepository _userRepository;
  RxBool hidePassword = true.obs;
  RxBool isAuth = false.obs;
  final _isLoading = false.obs;
  late Rx<AuthModel?> auth;
  bool get isLoading => _isLoading.value;

  void logOut() {
    isAuth.value = false;
  }

  
  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("auth") != null) {
      isAuth.value = true;
    }
  }
  
  void login() async {
    final email = emailC.text;
    final pass = passwordC.text;

    if (email != '' && pass != '') {
      if (GetUtils.isEmail(email)) {
          // isLogged.value = true;
          try {
            final response = await _userRepository.login(email, pass);
            // setLoading(false);
            if (response != null) {
              isAuth.value = true;
              // print(auth);
              // print(response.accessToken);
              final box = GetStorage();
              box.write('auth', response);
              // response
              // Logger(printer: PrettyPrinter(methodCount : 0, colors: true)).v(response['token']);
              // return auth;
            }
          } catch (e) {
            // Log.loga(title, "getProducts:: e >>>>> $e");
            // setLoading(false);
            // constants.showSnackbar("Api Error", "error:: $e");
          }
      } else {
        // dialogError("Email tidak valid.");
      }
    } else {
      // dialogError("Semua data input harus diisi.");
    }
  }

  void checkLoginStatus() {
    final token = getToken();
    if (token != null) {
      isAuth.value = true;
    }
  }

  
  @override
  void onInit() async {
    super.onInit();

    emailC.text = 'caleg1@demo.com';
    passwordC.text = 'admin123';
    _userRepository = Get.put(UserRepository());

    final box = GetStorage();
    if (box.read("auth") != null) {

    }
  }

  @override
  void onClose() {
    emailC.dispose();
    passwordC.dispose();
    super.onClose();
  }
}