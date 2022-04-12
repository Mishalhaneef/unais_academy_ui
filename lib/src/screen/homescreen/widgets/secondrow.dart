import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/common/construction_page.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Explore Course',
            style: helperTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: TextButton(
            // ignore: prefer_const_constructors
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(ConstructionPage.routeName);
            },
            child: const Text(
              'See All',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
