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
                          width: p1.maxWidth,
                          height: 300,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                CardAnnoumencementsWidget(),
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                          ),
                        )
                      ],
                    ),
                    TextFormWidget(text: "Representantes"),
                    Container(
                      padding: const EdgeInsets.only(top: 23),
                      height: p1.minHeight * 0.4,
                      width: p1.maxWidth,
                      child: GridView.builder(
                        itemBuilder: (context, index) =>
                            TileRepresentativeWidget(),
                        itemCount: 5,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 60,
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
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
