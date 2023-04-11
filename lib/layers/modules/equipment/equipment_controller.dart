import 'package:easyflow/layers/modules/equipment/provider/equipment_provider.dart';
import 'package:get/get.dart';

class EquipmentController extends GetxController {
  var numPages = (dummyEquipments.length ~/ 12);
  var currentPage = 1.obs;

  void updatePage(value) {
    currentPage.value = value;
    update();
  }
}
