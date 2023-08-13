import 'package:advancesearch/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/join_web.dart';
import '../utils/option_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final cityController = TextEditingController();
  final religionController = TextEditingController();
  final countryController = TextEditingController();
  final qualiController = TextEditingController();
  final ageController = TextEditingController();
  final bodyController = TextEditingController();
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white24,
        body: Row(
          children: [
            Container(
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(AppLayout.getHeight(50)),
                  JionedSectionWeb(text1: "City", text2: cityController),
                  JionedSectionWeb(
                      text1: "Religion", text2: religionController),
                  JionedSectionWeb(text1: "Country", text2: countryController),
                  JionedSectionWeb(
                      text1: "Qualification", text2: qualiController),
                  JionedSectionWeb(text1: "Age", text2: ageController),
                  JionedSectionWeb(text1: "Body Type", text2: bodyController),
                  JionedSectionWeb(text1: " ", text2: controller),
                  JionedSectionWeb(text1: " ", text2: controller),
                ],
              ),
            ),
            Gap(10),
            Container(
              
              width: AppLayout.getScreenWidth() * 0.40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Gap(AppLayout.getHeight(40)),
                  const Center(
                    child: Text(
                      "Advance Search",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
                    ),
                  ),
                  Container(
                    width: AppLayout.getScreenWidth() * 0.35,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                          options.length ~/ 2 + options.length % 2, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (index * 2 < options.length)
                                Container(
                                  height: 45,
                                  width: AppLayout.getScreenWidth() * 0.16,
                                  margin: EdgeInsets.symmetric(vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 243, 191, 208),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      options[index * 2],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              if (index * 2 + 1 < options.length)
                                Container(
                                  height: 45,
                                  width: AppLayout.getScreenWidth() * 0.16,
                                  margin: EdgeInsets.symmetric(vertical: 3),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 243, 191, 208),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      options[index * 2 + 1],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  Gap(AppLayout.getHeight(30)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: GestureDetector(
                  onTap: (){
                    
                  },
                  child: Container(
                    height: AppLayout.getHeight(50),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.grey.shade600,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            blurStyle: BlurStyle.normal,
                            color: Colors.grey,
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        "Search",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
              )
                ],
              ),
            )
          ],
        ));
  }
}
