import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class ModernTextField extends StatelessWidget {
  ModernTextField({
    Key? key,
    required this.text,
    required this.controller,
  }) : super(key: key);

  late String text;
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40),
      child: Container(
        height: 43,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kMainblueTheme, borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 30, top: 0, bottom: 3),
          child: TextFormField(
            controller: controller,
            cursorColor: kDeepBlueTheme,
            style: const TextStyle(color: kDeepBlueTheme),
            decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(color: kDeepBlueTheme.withAlpha(200)),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
