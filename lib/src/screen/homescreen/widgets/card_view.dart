// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/common/construction_page.dart';

// ignore: must_be_immutable
class CardView extends StatelessWidget {
  CardView({
    Key? key,
    required this.headText,
    required this.secondText,
    required this.buttonText,
    required this.personImage,
    required this.backgroundColor,
  }) : super(key: key);

  final headText;
  final secondText;
  final buttonText;
  final personImage;
  LinearGradient backgroundColor = kLinearColorBlue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: SizedBox(
        height: 195,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: backgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(headText, style: offerText),
                    const SizedBox(height: 5),
                    Text(secondText, style: offerDiscriptionStyle),
                    const SizedBox(height: 6),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ConstructionPage.routeName);
                      },
                      child: Text(buttonText, style: buttonTextStyle),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all<double>(0),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              height: 230,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset(personImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
