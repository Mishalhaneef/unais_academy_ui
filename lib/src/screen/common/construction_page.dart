import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unais_academy_prototype/constants.dart';

class ConstructionPage extends StatelessWidget {
  const ConstructionPage({Key? key}) : super(key: key);
  static const routeName = 'add_transaction';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kHomeColor),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 100),
            Lottie.asset('assets/animations/construction.json'),
            const SizedBox(height: 30),
            const Text(
              'Page Under Construction',
              style: TextStyle(
                  color: kDeepBlueTheme,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(right: 50,left: 50),
              child: Text(
                "This is a prototype version of unais academy, other page will release with alpha release",
                style: TextStyle(
                    color: kDeepBlueTheme,),
                    textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height:34,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)
              ),
              child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Go to Home', style: buttonTextStyleDark),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        )),
                          elevation: MaterialStateProperty.all<double>(0),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent)
                        ),
                      ),
            ),
          ],
        )
      ),
    );
  }
}