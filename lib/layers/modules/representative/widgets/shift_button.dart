import 'package:easyflow/layers/modules/representative/representative_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShiftButton extends StatelessWidget {
  final String shiftText;
  final bool isSelected;

  const ShiftButton({
    required this.shiftText,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RepresentativeController>();

    return FilledButton(
      child: Text(
        shiftText,
        style: TextStyle(
          fontFamily: 'Segoe_UI',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
      onPressed: () => controller.onShiftButtonClicked(shiftText),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        backgroundColor: isSelected ? Colors.blue : Color(0XFFD9D9D9),
      ),
    ).marginOnly(right: 10);
  }
}
