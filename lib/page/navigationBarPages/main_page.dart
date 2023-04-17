import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:travelapp/common/colors.dart';
import 'package:travelapp/widget/bold_text_style.dart';
import 'package:travelapp/widget/regular_text_style.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  final List images = [
    'mountain.jpeg',
    'pasupati.jpg',
    'welcome-four.png',
    'stupa.jpg',
  ];

  var icons = {
    'balloning.png': 'Balloning',
    'hiking.png': 'Hiking',
    'kayaking.png': 'Kayaking',
    'snorkling': 'Snorkling'
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.mainColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: const BoldText(text: 'Discover'),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              indicatorPadding: EdgeInsets.only(top: 40),
              indicator: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.mainColor),
              tabs: [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Destination',
                ),
                Tab(
                  text: 'Nature',
                ),
              ],
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 15, right: 20),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('img/${images[index]}'))),
                  );
                },
              ),
              Text('Helloo'),
              Text('oooooooooooo')
            ])),
        SizedBox(
          height: 50,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BoldText(
                text: 'Explore More',
                size: 22,
              ),
              RegularText(text: 'See More')
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 120,
          width: double.maxFinite,
          child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      //margin: const EdgeInsets.only(right: 50),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'img/${icons.keys.elementAt(index)}'))),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      child: Text(icons.values.elementAt(index)),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
