import 'package:easyflow/layers/modules/equipment/equipment_controller.dart';
import 'package:easyflow/layers/modules/equipment/widgets/textfield_equipment_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentAddPage extends GetView<EquipmentController> {
  const EquipmentAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.width * .05,
              vertical: context.height * .03,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 175,
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Adicionar",
                          style: TextStyle(
                            fontFamily: "Segoe UI",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 30,
                    runSpacing: 20,
                    children: [
                      TextFieldEquipmentWidget(
                        title: "Nome",
                        hintText: "ex: Aspire A315",
                        controller: controller.nameEquipTextController,
                      ),
                      TextFieldEquipmentWidget(
                        title: "Marca",
                        hintText: "ex: Acer",
                        controller: controller.modelEquipTextController,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 30,
                    runSpacing: 20,
                    children: [
                      TextFieldEquipmentWidget(
                        title: "Tombo",
                        hintText: "ex: 010101",
                        controller: controller.tumbleEquipTextController,
                      ),
                      SizedBox(
                        width: 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFieldEquipmentWidget(
                                title: "RAM",
                                hintText: "ex: 4GB",
                                controller: controller.ramEquipTextController,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFieldEquipmentWidget(
                                title: "Processador",
                                hintText: "ex: i5 10gen",
                                controller:
                                    controller.processorEquipTextController,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: TextFieldEquipmentWidget(
                                title: "Memória",
                                hintText: "ex: 128GB SSD",
                                controller:
                                    controller.memoryEquipTextController,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
