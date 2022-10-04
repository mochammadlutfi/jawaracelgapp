import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/relawan_controller.dart';

class RelawanListPage extends GetView<RelawanController> {
  const RelawanListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RelawanController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Relawan"),
      ),
    );
  }
}
