import 'package:advancesearch/utils/app_layout.dart';
import 'package:advancesearch/utils/option_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white12,
        body: Padding(
          padding: EdgeInsets.all(AppLayout.getHeight(10)),
          child: ListView(
            children: [
              Gap(AppLayout.getHeight(70)),
              const Center(
                child: Text(
                  "Advance Search",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Center(child: const Text("Drag Component")),
              Gap(AppLayout.getHeight(20)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: options.map((option) {
                      return Container(
                        height: 35,
                        width: AppLayout.getWidth(120),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 243, 191, 208),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            option,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
