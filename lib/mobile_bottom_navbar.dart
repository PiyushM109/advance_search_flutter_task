import 'package:advancesearch/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'screens/home_screen.dart';

void main() => runApp(MaterialApp(home: MobileBottomNavBar()));

class MobileBottomNavBar extends StatefulWidget {
  @override
  _MobileBottomNavBarState createState() => _MobileBottomNavBarState();
}

class _MobileBottomNavBarState extends State<MobileBottomNavBar> {
  List Screens = [
    HomeScreen(),
    SecondScreen(),
    SecondScreen(),
    SecondScreen(),
    SecondScreen(),
  ];
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _page,
          height: 60.0,
          items: [
            Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite_outline,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.home_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.message_outlined,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person_2_outlined,
              size: 30,
              color: Colors.white,
            ),
          ],
          color: Color.fromARGB(255, 251, 131, 171),
          buttonBackgroundColor: Color.fromARGB(255, 251, 131, 171),
          backgroundColor: Colors.white12,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Screens[_page]);
  }
}
