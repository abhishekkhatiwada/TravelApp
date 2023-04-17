import 'package:flutter/material.dart';

class SemiBoldText extends StatelessWidget {
  const SemiBoldText({super.key, required this.text, this.size, this.color});
  final String text;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: FontWeight.w400),
    );
  }
}
