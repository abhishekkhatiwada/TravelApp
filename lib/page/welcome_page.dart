import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travelapp/common/colors.dart';
import 'package:travelapp/page/home_page.dart';
import 'package:travelapp/widget/bold_text_style.dart';
import 'package:travelapp/widget/custom_button.dart';
import 'package:travelapp/widget/regular_text_style.dart';
import 'package:travelapp/widget/semi_bold_text_style.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final PageController _pageController = PageController(initialPage: 0);

  final List images = [
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/${images[index]}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 200, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BoldText(text: 'Nepal'),
                        const SemiBoldText(text: 'Destinations'),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 200,
                          child: RegularText(
                              text:
                                  'See your destionation for vaccation  in Nepal and plan.'),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                          },
                          width: 120,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(top: 200, right: 20),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: images.length,
              axisDirection: Axis.vertical,
              effect: const ExpandingDotsEffect(
                  activeDotColor: AppColors.mainColor,
                  dotWidth: 8,
                  dotHeight: 5),
            ),
          ),
        ),
      ]),
    );
  }
}
