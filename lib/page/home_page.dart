import 'package:flutter/material.dart';
import 'package:travelapp/common/colors.dart';
import 'package:travelapp/page/navigationBarPages/favourite_page.dart';
import 'package:travelapp/page/navigationBarPages/main_page.dart';
import 'package:travelapp/page/navigationBarPages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _pages = [
    const MainPage(),
    const SearchPage(),
    const FavouritePage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        elevation: 1,
        onTap: onTap,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.mainColor.withOpacity(0.3),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
      ),
    );
  }
}
