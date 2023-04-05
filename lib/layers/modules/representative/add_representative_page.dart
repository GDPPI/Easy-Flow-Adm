import 'package:easyflow/layers/modules/representative/representative_controller.dart';
import 'package:easyflow/layers/modules/representative/widgets/shift_button.dart';
import 'package:easyflow/layers/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddRepresentativePage extends GetView<RepresentativeController> {
  const AddRepresentativePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: size.width * 0.3,
                          child: TextFieldWidget(
                            prefixIcon: Icon(Icons.badge_outlined),
                            label: "Digite seu nome completo",
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: TextFieldWidget(
                            prefixIcon: Icon(Icons.email_outlined),
                            label: "Digite seu email",
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.3,
                          child: TextFieldWidget(
                            label: "Área",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.white,
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width * 0.9,
                height: 105,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dias disponível",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        ShiftButton(
                          shiftText: "Manhã",
                          onPressed: () {},
                        ),
                        ShiftButton(
                          shiftText: "Tarde",
                          onPressed: () {},
                        ),
                        ShiftButton(
                          shiftText: "Noite",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
