import 'package:easyflow/layers/modules/initial/initial_controller.dart';
import 'package:easyflow/layers/modules/initial/widgets/card_annoumencements_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/text_form_initial_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/tite_representative.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialPage extends GetView<InitialController> {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              alignment: Alignment.centerLeft,
              height: p1.maxHeight,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        child: TextFormInitialWidget(
                      text: "Comunicados",
                      controller: controller.controllerComunicado,
                    )),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 300,
                            width: p1.maxWidth,
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisExtent: 325,
                                mainAxisSpacing: 16,
                              ),
                              itemBuilder: (context, index) =>
                                  CardAnnoumencementsWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormInitialWidget(
                      text: "Representantes",
                      controller: controller.controllerrepresentante,
                    ),
                    Obx(
                      () => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 23),
                              height: 220,
                              width: p1.maxWidth,
                              child: GridView.builder(
                                itemBuilder: (context, index) =>
                                    TileRepresentativeWidget(
                                  representante:
                                      controller.representatives[index],
                                ),
                                itemCount: controller.representatives.length,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 16,
                                  crossAxisCount: 3,
                                  mainAxisExtent: 325,
                                  crossAxisSpacing: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
