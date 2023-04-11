import 'package:easyflow/layers/modules/equipment/equipment_controller.dart';
import 'package:easyflow/layers/modules/equipment/provider/equipment_provider.dart';
import 'package:easyflow/layers/modules/equipment/widgets/equipment_container_widget.dart';
import 'package:easyflow/layers/modules/equipment/widgets/pagination_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentPage extends GetView<EquipmentController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth < 500
                      ? context.width * .05
                      : context.width * .05,
                  vertical: context.height * .03,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    Expanded(
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 300,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 20,
                          mainAxisExtent: 90,
                        ),
                        children: dummyEquipments
                            .map((e) => EquipmentContainerWidget(equipment: e))
                            .toList(),
                      ),
                    ),
                    FittedBox(
                      child: PaginationWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
