import 'package:flutter/material.dart';
import 'package:travelapp/common/colors.dart';
import 'package:travelapp/widget/bold_text_style.dart';
import 'package:travelapp/widget/custom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 350,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/mountain.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 20,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  // Expanded(child: Container()),
                  // Container(
                  //   width: 50,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Colors.red,
                  //   ),
                  // ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        BoldText(text: 'Mt Everest'),
                        BoldText(
                          text: '\$250',
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          onPressed: () {},
                          width: 120,
                          isResponsive: true,
                          text: 'Book your Trip Now',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
