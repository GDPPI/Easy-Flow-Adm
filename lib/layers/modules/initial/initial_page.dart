import 'package:easyflow/layers/modules/initial/widgets/card_annoumencements_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/text_form_widget.dart';
import 'package:easyflow/layers/modules/initial/widgets/tite_representative.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (p0, p1) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              height: p1.maxHeight,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(
                vertical: 40,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(child: TextFormWidget(text: "Comunicados")),
                    Row(
                      children: [
                        SizedBox(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          child: GridView(
                            physics: PageScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                            ),
                            children: List.generate(
                              9,
                              (index) => CardAnnoumencementsWidget(),
                            ),
                          ),
                        )
                      ],
                    ),
                    TextFormWidget(text: "Representantes"),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 23),
                          height: 220,
                          width: MediaQuery.of(context).size.width * 0.99,
                          child: GridView.builder(
                            itemBuilder: (context, index) =>
                                TileRepresentativeWidget(),
                            itemCount: 15,
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 20,
                              crossAxisCount: 3,
                              mainAxisExtent: 325,
                              crossAxisSpacing: 12,
                            ),
                          ),
                        ),
                      ],
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
