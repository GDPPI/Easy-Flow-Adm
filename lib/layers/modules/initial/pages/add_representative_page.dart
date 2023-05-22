import 'package:easyflow/core/utils/validators_util.dart';
import 'package:easyflow/layers/modules/representative/representative_controller.dart';
import 'package:easyflow/layers/modules/representative/widgets/shift_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRepresentativePage extends GetView<RepresentativeController> {
  const AddRepresentativePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 500,
        height: 700,
        color: Colors.white,
        child: Form(
          key: controller.formKey,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: 189,
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 35,
                  ),
                  child: Icon(Icons.add_a_photo_outlined),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black12,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(label: Text("Nome completo")),
                  controller: controller.nameTextController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => Validators.isNotEmpty(value),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(label: Text("E-mail")),
                  controller: controller.emailTextController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => Validators.isEmail(value),
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(label: Text("Área")),
                  controller: controller.areaTextController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => Validators.isNotEmpty(value),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dias disponível",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Obx(
                      () => Row(
                        children: [
                          ShiftButton(
                              shiftText: "Manhã",
                              isSelected:
                                  controller.isMorningShiftSelected.value),
                          ShiftButton(
                              shiftText: "Tarde",
                              isSelected:
                                  controller.isAfternoonShiftSelected.value),
                          ShiftButton(
                              shiftText: "Noite",
                              isSelected:
                                  controller.isNightShiftSelected.value),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: controller.saveButtonClicked,
                        child: Text(
                          "Salvar",
                          style: TextStyle(
                            fontFamily: 'Segoe_UI',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
