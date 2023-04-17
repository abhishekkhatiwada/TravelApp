import 'package:flutter/material.dart';

class RegularText extends StatelessWidget {
  const RegularText({super.key, required this.text, this.size, this.color});
  final String text;
  final double? size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 14,
          color: color ?? Colors.black,
          fontWeight: FontWeight.normal),
    );
  }
}
