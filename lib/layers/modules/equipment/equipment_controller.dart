import 'package:easyflow/layers/modules/equipment/provider/equipment_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentController extends GetxController {
  TextEditingController nameEquipTextController = TextEditingController();
  TextEditingController modelEquipTextController = TextEditingController();
  TextEditingController tumbleEquipTextController = TextEditingController();
  TextEditingController ramEquipTextController = TextEditingController();
  TextEditingController processorEquipTextController = TextEditingController();
  TextEditingController memoryEquipTextController = TextEditingController();

  var numPages = (dummyEquipments.length ~/ 12);
  var currentPage = 1.obs;

  void updatePage(value) {
    currentPage.value = value;
    update();
  }
}
