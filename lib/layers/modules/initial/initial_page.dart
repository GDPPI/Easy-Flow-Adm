import 'package:easyflow/layers/modules/initial/data_representatives.dart';
import 'package:easyflow/layers/modules/initial/widgets/card_annoumencements_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/text_form_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/tite_representative.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
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
                    SizedBox(child: TextFormWidget(text: "Comunicados")),
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
                    TextFormWidget(text: "Representantes"),
                    SingleChildScrollView(
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
                                representante: representativesData[index],
                              ),
                              itemCount: representativesData.length,
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
                    )
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
