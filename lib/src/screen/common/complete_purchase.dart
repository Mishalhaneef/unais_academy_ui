import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:unais_academy_prototype/constants.dart';

class CompletePopup extends StatelessWidget {
  const CompletePopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kHomeColor,
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(108.0),
              child: Lottie.asset(
                'assets/animations/done.json',
                fit: BoxFit.contain,
                repeat: false,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Purchased Succesfully',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Watch Course'),
            )
          ],
        ),
      ),
    );
  }
}
