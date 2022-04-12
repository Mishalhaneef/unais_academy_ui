import 'package:flutter/material.dart';

import '../../../../constants.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key? key,
    required this.userName,
  }) : super(key: key);

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30, right: 0),
        child: Row(
          children: [
            const Text('Hello ', style: headRichText),
            Text(userName[0].toUpperCase(), style: headRichText),
            Text(userName.substring(1).toLowerCase(), style: headRichText),
          ],
        ));
  }
}
