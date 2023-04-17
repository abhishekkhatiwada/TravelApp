import 'package:flutter/material.dart';
import 'package:travelapp/common/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.width, required this.onPressed});
  final double width;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('img/button-one.png')],
        ),
      ),
    );
  }
}
