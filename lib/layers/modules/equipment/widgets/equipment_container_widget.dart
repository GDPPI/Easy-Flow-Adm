import 'package:easyflow/layers/modules/equipment/equipment_controller.dart';
import 'package:easyflow/layers/modules/equipment/model/equipment_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EquipmentContainerWidget extends GetView<EquipmentController> {
  final EquipmentModel equipment;

  const EquipmentContainerWidget({
    super.key,
    required this.equipment,
  });

  @override
  Widget build(BuildContext context) {
    ScrollController _controllerScroll = ScrollController();

    return Container(
      width: 300,
      height: 90,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Scrollbar(
              scrollbarOrientation: ScrollbarOrientation.bottom,
              controller: _controllerScroll,
              thumbVisibility: false,
              child: ListView.separated(
                controller: _controllerScroll,
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15),
                ),
                itemBuilder: (context, index) => Text(
                  index == 0
                      ? "${equipment.model} ${equipment.name}"
                      : "#${equipment.tumble}",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Segoe UI",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4a6f90),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "Descrição",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Color(0xff8b8b8b),
              ),
            ),
          ),
          Text(
            "${equipment.description[0]} RAM, ${equipment.description[1]}, ${equipment.description[2]}",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xff8b8b8b),
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor:
                    equipment.isDisponible ? Colors.green : Colors.red,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  equipment.isDisponible ? "Disponível" : "Ocupado",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8b8b8b),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
