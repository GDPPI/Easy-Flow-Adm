import 'package:flutter/material.dart';

class ShiftButton extends StatelessWidget {
  final String shiftText;
  final void Function()? onPressed;

  const ShiftButton({
    required this.shiftText,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      child: Text(
        shiftText,
        style: TextStyle(
          fontFamily: 'Segoe_UI',
          fontSize: 13,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        backgroundColor: Color(0XFFD9D9D9),
      ),
    );
  }
}
