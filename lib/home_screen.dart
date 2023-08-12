import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Text("Home Page", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
      ),
    );
  }
}