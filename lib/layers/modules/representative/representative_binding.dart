import 'package:easyflow/layers/modules/representative/representative_controller.dart';
import 'package:get/get.dart';

class RepresentativeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RepresentativeController>(() => RepresentativeController());
  }
}
