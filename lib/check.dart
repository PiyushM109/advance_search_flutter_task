import 'package:advancesearch/mobile_bottom_navbar.dart';
import 'package:advancesearch/responsive/responsive_layout.dart';
import 'package:advancesearch/screens/web_home_page.dart';
import 'package:flutter/material.dart';


class Checker extends StatefulWidget {
  const Checker ({super.key});

  @override
  State<Checker> createState() => _CheckerState();
}

class _CheckerState extends State<Checker> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: ResponsiveLayout(desktopBody:DeskTopHome() ,mobileBody: MobileBottomNavBar(),), 
    
    );
  }
}