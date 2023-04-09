import 'package:easyflow/layers/modules/horary/horary_controller.dart';
import 'package:easyflow/layers/modules/horary/model/horary_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ListingHoraryWidget extends GetView<HoraryController> {
  final HoraryModel horary;

  const ListingHoraryWidget({
    super.key,
    required this.horary,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontFamily: "Segoe UI",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff4a6f90),
    );

    return Container(
      height: 35,
      margin: EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Get.theme.colorScheme.primary,
                child: Center(
                  child: Text(
                    NumberFormat("00").format(horary.table),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "Segoe UI",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          horary.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: textStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            horary.day.substring(0, 3),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Center(
                          child: Text(
                            horary.turn,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: textStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
