import 'package:flutter/material.dart';

class TextFieldEquipmentWidget extends StatelessWidget {
  final String title;
  final String hintText;
  final double width;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  const TextFieldEquipmentWidget({
    super.key,
    required this.title,
    required this.hintText,
    this.width = 350,
    this.controller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff5a5a5f),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8b8b8b),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color(0xffBFBFC3),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
