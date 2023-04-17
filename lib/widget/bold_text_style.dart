import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText({super.key, required this.text, this.size, this.color});
  final String text;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 24,
          color: color ?? Colors.black,
          fontWeight: FontWeight.bold),
    );
  }
}
