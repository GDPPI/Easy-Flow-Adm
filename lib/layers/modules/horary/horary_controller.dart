import 'package:get/get.dart';

class HoraryController extends GetxController {
  var valuesDays = [
    "Segunda-feira",
    "Terça-feira",
    "Quarta-feira",
    "Quinta-feira",
    "Sexta-feira",
  ];

  var valuesTurns = [
    "Manhã",
    "Tarde",
    "Noite",
  ];

  var valueDaySelected = "Segunda-feira".obs;
  var valueTurnSelected = "Manhã".obs;

  void updateSelectedDay(value) {
    valueDaySelected.value = value;
    update();
  }

  void updateSelectedTurn(value) {
    valueTurnSelected.value = value;
    update();
  }
}
