import 'package:easyflow/core/routes/app_pages.dart';
import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:easyflow/layers/modules/horary/provider/horary_provider.dart';
import 'package:easyflow/layers/modules/horary/widgets/listing_horary_widget.dart';
import 'package:easyflow/layers/modules/horary/widgets/titles_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoraryPage extends GetView<HoraryController> {
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
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Wrap(
                    alignment:
                        constraints.maxWidth < (450 + context.width * .10)
                            ? WrapAlignment.center
                            : WrapAlignment.start,
                    spacing: 50,
                    runSpacing: 15,
                    children: [
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.HORARY_EDIT_TABLES);
                          },
                          child: Text(
                            "Editar mesas",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.HORARY_ADD);
                          },
                          child: Text(
                            "Adicionar horário",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TitlesListWidget(),
                  Expanded(
                    child: Obx(
                      () => ListView(
                        children: dummyUsers
                            .map((e) => ListingHoraryWidget(horary: e))
                            .where(
                              (element) =>
                                  element.horary.day
                                      .toString()
                                      .toLowerCase()
                                      .contains(
                                        controller.valueDaySelected
                                            .toString()
                                            .toLowerCase(),
                                      ) &&
                                  element.horary.turn
                                      .toString()
                                      .toLowerCase()
                                      .contains(
                                        controller.valueTurnSelected
                                            .toString()
                                            .toLowerCase(),
                                      ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
