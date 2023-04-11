import 'package:easyflow/layers/modules/equipment/equipment_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pagination_flutter/pagination.dart';

class PaginationWidget extends GetView<EquipmentController> {
  const PaginationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Pagination(
        numOfPages: controller.currentPage.value,
        selectedPage: controller.currentPage.value,
        pagesVisible: 3,
        onPageChanged: (index) {
          controller.updatePage(index);
        },
        activeTextStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xffD9D9D9),
        ),
        activeBtnStyle: TextButton.styleFrom(
          backgroundColor: Color(0xff0085FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        inactiveTextStyle: TextStyle(
          fontFamily: "Poppins",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xff0085FF),
        ),
        inactiveBtnStyle: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        nextIcon: Icon(
          Icons.navigate_next,
          size: 24,
          color: Color(0xff0085FF),
        ),
        previousIcon: Icon(
          Icons.navigate_before,
          size: 24,
          color: controller.currentPage.value == 1
              ? Colors.transparent
              : Color(0xff0085FF),
        ),
      ),
    );
  }
}
