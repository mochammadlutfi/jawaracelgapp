import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../controllers/account_controller.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: Get.isDarkMode
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        title: Text(
          Get.isDarkMode ? 'Dark Theme' : 'Light Theme',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: const Text('Change Theme'),
        ),
      ),
    );
  }
}
