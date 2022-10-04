import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/pendukung_controller.dart';

class PendukungListPage extends GetView<PendukungController> {
  const PendukungListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PendukungController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Pendukung"),
      ),
    );
  }
}
