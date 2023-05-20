import 'package:flutter/material.dart';

class CircleIconWidget extends StatelessWidget {
  final IconData icon;
  Color? backgroundColor;
  Color? foregroundColor;
  CircleIconWidget(
      {super.key,
      required this.icon,
      this.backgroundColor,
      this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? Theme.of(context).colorScheme.primary),
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      child: Icon(
        icon,
        color: foregroundColor ?? Colors.white,
        size: 18,
      ),
    );
  }
}
