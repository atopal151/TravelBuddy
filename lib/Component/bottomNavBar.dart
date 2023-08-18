// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../FavoriteScreen/favoriteScreen.dart';
import '../HomeScreen/homeScreen.dart';
import '../SearchScreen/searchScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const SearchScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
        unselectedFontSize: 0, // Seçilmemiş ikonların etiketlerini gizler
        iconSize: 25, // Seçilen ikonun boyutu
        selectedIconTheme: const IconThemeData(size: 30), // Seçilen ikonun büyük boyutu
      ),
    );
  }
}
