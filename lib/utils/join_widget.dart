import 'package:advancesearch/utils/app_layout.dart';
import 'package:advancesearch/utils/my_text_field.dart';
import 'package:flutter/material.dart';

class JionedSection extends StatelessWidget {
  final String text1;
  final TextEditingController text2;
  const JionedSection({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: AppLayout.getHeight(80),
              width: AppLayout.getScreenWidth() * 0.65,
            ),
            Container(
              height: AppLayout.getHeight(55),
              width: AppLayout.getWidth(110),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 237, 101, 146),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                text1,
                style: TextStyle(fontSize: 15, color: Colors.white),
              )),
            ),
            Positioned(
              top: 7,
              right: -12,
              child: SizedBox(
                height: AppLayout.getHeight(40),
                width: AppLayout.getScreenWidth() * 0.55,
                child: MyTextField(
                  controller: text2,
                  hintText: text1,
                  obscureText: false,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
