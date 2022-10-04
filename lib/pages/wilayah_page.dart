import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/account_controller.dart';
import '../controllers/wilayah_controller.dart';

class AccountPage extends GetView<WilayahController> {
  final String type;
  const AccountPage(this.type, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(WilayahController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cari Wilayah"),
      ),
    );
  }
}
