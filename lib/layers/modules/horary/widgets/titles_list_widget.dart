import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitlesListWidget extends GetView<HoraryController> {
  const TitlesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: "Segoe UI",
      fontSize: 13,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
      color: Color(0xff4a6f90).withOpacity(0.80),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Mesa",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                "Nome",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textStyle,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Obx(
                () => DropdownButton(
                  style: textStyle,
                  underline: Container(),
                  value: controller.valueDaySelected.value.substring(0, 3),
                  onChanged: (value) {
                    controller.updateSelectedDay(value);
                  },
                  items: controller.valuesDays
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.substring(0, 3),
                          child: Text(
                            e.substring(0, 3),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Obx(
                () => DropdownButton(
                  style: textStyle,
                  underline: Container(),
                  value: controller.valueTurnSelected.value,
                  onChanged: (value) {
                    controller.updateSelectedTurn(value);
                  },
                  items: controller.valuesTurns
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
