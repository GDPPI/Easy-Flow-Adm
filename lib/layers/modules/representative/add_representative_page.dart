import 'package:easyflow/core/utils/validators_util.dart';
import 'package:easyflow/layers/modules/representative/representative_controller.dart';
import 'package:easyflow/layers/modules/representative/widgets/shift_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRepresentativePage extends GetView<RepresentativeController> {
  const AddRepresentativePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: controller.saveButtonClicked,
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      fontFamily: 'Segoe_UI',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(170, 40),
                    elevation: 0,
                  ),
                ),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 160,
                        width: 189,
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 35,
                        ),
                        child: Image.asset(
                          "assets/images/add_a_photo.png",
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          color: Colors.white,
                        ),
                      ),
                      Form(
                        key: controller.formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: size.width * 0.3,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: Text("Nome completo")),
                                controller: controller.nameTextController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    Validators.isNotEmpty(value),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.3,
                              child: TextFormField(
                                decoration:
                                    InputDecoration(label: Text("E-mail")),
                                controller: controller.emailTextController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) => Validators.isEmail(value),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.3,
                              child: TextFormField(
                                decoration:
                                    InputDecoration(label: Text("Área")),
                                controller: controller.areaTextController,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                validator: (value) =>
                                    Validators.isNotEmpty(value),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.01,
                  ),
                  alignment: Alignment.centerLeft,
                  width: size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
