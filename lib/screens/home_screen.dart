import 'package:advancesearch/utils/app_layout.dart';
import 'package:advancesearch/utils/join_widget.dart';
import 'package:advancesearch/utils/option_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        backgroundColor: Colors.white12,
        body: Padding(
          padding: EdgeInsets.all(AppLayout.getHeight(10)),
          child: ListView(
            children: [
              Gap(AppLayout.getHeight(40)),
              const Center(
                child: Text(
                  "Advance Search",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Center(child: Text("Drag Component")),
              Gap(AppLayout.getHeight(30)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: options.map((option) {
                        return Container(
                          height: 35,
                          width: AppLayout.getWidth(120),
                          margin: EdgeInsets.symmetric(vertical: 3),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        JionedSection(text1: "City", text2: cityController),
                        JionedSection(
                            text1: "Religion", text2: religionController),
                        JionedSection(
                            text1: "Country", text2: countryController),
                        JionedSection(
                            text1: "Qualification", text2: qualiController),
                        JionedSection(text1: "Age", text2: ageController),
                        JionedSection(
                            text1: "Body Type", text2: bodyController),
                        JionedSection(text1: " ", text2: controller),
                        JionedSection(text1: " ", text2: controller),
                      ],
                    ),
                  )
                ],
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
                          color: Colors.grey.shade300,
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
        ));
  }
}
