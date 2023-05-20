import 'package:flutter/material.dart';
import 'package:travelapp/common/colors.dart';
import 'package:travelapp/widget/regular_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.width = 120,
      required this.onPressed,
      this.isResponsive = false,
      this.text});
  final double? width;
  final VoidCallback onPressed;
  final bool? isResponsive;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 60,
          width: isResponsive == true ? double.maxFinite : width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor,
          ),
          child: Row(
            mainAxisAlignment: isResponsive == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              isResponsive == true
                  ? Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: RegularText(
                        text: '$text',
                        color: Colors.white,
                      ))
                  : Container(),
              Image.asset('img/button-one.png'),
            ],
          ),
        ),
      ),
    );
  }
}
