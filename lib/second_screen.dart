import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
        child: Text("Extra Page", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
      ),
    );
  }
}