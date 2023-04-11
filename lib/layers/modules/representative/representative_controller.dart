import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RepresentativeController extends GetxController {
  var isMorningShiftSelected = false.obs;
  var isAfternoonShiftSelected = false.obs;
  var isNightShiftSelected = false.obs;

  void onShiftButtonClicked(String shiftText) {
    switch (shiftText) {
      case "Manhã":
        isMorningShiftSelected.value = !isMorningShiftSelected.value;
        break;
      case "Tarde":
        isAfternoonShiftSelected.value = !isAfternoonShiftSelected.value;
        break;
      case "Noite":
        isNightShiftSelected.value = !isNightShiftSelected.value;
        break;
      default:
        throw Exception("Opção inválida!");
    }
  }

  final formKey = GlobalKey<FormState>();
  final nameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final areaTextController = TextEditingController();

  void saveButtonClicked() {
    bool isValid = formKey.currentState!.validate();
  }
}
