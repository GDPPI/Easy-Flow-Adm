import 'package:easyflow/layers/modules/initial/initial_controller.dart';
import 'package:easyflow/layers/modules/initial/pages/add_representative_page.dart';
import 'package:easyflow/layers/modules/initial/widgets/card_annoumencements_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/text_form_initial_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/tite_representative.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends GetView<InitialController> {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32),
                    child: TextFormInitialWidget(
                      text: "Comunicados",
                      controller: controller.controllerComunicado,
                      onPressed: () => controller.pageController.jumpToPage(1),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 32, top: 16, right: 32),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 260,
                        mainAxisExtent: 320,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) =>
                          CardAnnoumencementsWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32,
                    ),
                    child: TextFormInitialWidget(
                      text: "Representantes",
                      controller: controller.controllerrepresentante,
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) => AddRepresentativePage()),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(left: 32, top: 16, right: 32),
                      itemCount: controller.representatives.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 70,
                        mainAxisExtent: 320,
                        mainAxisSpacing: 16,
                      ),
                      itemBuilder: (context, index) => TileRepresentativeWidget(
                        representante: controller.representatives[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
