import 'package:easyflow/layers/data/model/representatives_model.dart';
import 'package:easyflow/layers/modules/initial/data_representatives.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialController extends GetxController {
  final controllerComunicado = TextEditingController();
  final controllerrepresentante = TextEditingController();
  final RxList<RepresentativesModel> _reprePesquisar =
      RxList<RepresentativesModel>();
  @override
  void onInit() {
    super.onInit();
    controllerrepresentante.addListener(() {
      pesquisar();
    });
    _reprePesquisar.value = representativesData;
  }

  pesquisar() {
    _reprePesquisar.value = representativesData;
    if (controllerrepresentante.text != "") {
      _reprePesquisar.value = representativesData
          .where((element) => element.name
              .toLowerCase()
              .contains(controllerrepresentante.value.text.toLowerCase()))
          .toList();
    } else {
      _reprePesquisar.value = representativesData;
    }

    update();
  }

  List<RepresentativesModel> get  representatives {
    return _reprePesquisar;
  }
}
