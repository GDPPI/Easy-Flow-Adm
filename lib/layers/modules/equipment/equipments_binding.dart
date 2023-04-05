import 'package:get/get.dart';

import 'equipments_controller.dart';

class EquipmentsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EquipmentsController>(() => EquipmentsController());
  }
}
