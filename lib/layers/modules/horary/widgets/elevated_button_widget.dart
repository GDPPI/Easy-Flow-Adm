import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? onpressed;
  final EdgeInsetsGeometry margin;

  const ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.onpressed,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: margin,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: "Segoe UI",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
