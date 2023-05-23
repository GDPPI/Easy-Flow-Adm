import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:easyflow/layers/modules/horary/widgets/elevated_button_widget.dart';
import 'package:easyflow/layers/modules/horary/widgets/horary_days_widget.dart';
import 'package:easyflow/layers/modules/horary/widgets/horary_tables_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoraryAddPage extends GetView<HoraryController> {
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButtonWidget(
                        title: "Salvar",
                        margin: EdgeInsets.only(bottom: 20),
                        onpressed: () {
                          Get.toNamed(Routes.HORARY);
                        },
                      ),
                    ),
                    Expanded(
                      child: HoraryDaysWidget(),
                    ),
                    SizedBox(height: 20),
                    HoraryTablesWidget(
                      title: "Selecione uma mesa",
                      subtitle:
                          "a mesa selecionada é válida pelos dias selecionados",
                      isEditTable: false,
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
