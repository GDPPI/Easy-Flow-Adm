import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:get/get.dart';

class HoraryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HoraryController>(() => HoraryController());
  }
}
