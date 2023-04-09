import 'package:easyflow/layers/modules/equipment/equipment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentPage extends GetView<EquipmentController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: SafeArea(
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
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
