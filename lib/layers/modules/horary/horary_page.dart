import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:easyflow/layers/modules/horary/widgets/listing_horary_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoraryPage extends GetView<HoraryController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
                  alignment: constraints.maxWidth < (450 + context.width * .10)
                      ? WrapAlignment.center
                      : WrapAlignment.start,
                  spacing: 50,
                  runSpacing: 15,
                  children: [
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Editar mesas"),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Adicionar horário"),
                      ),
                    ),
                  ],
                ),
                Expanded(child: ListingHoraryWidget()),
              ],
            ),
          ),
        ),
      );
    });
  }
}
