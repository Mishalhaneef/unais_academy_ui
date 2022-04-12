import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/src/screen/common/construction_page.dart';
import 'package:unais_academy_prototype/src/screen/welcome%20screen/welcome_scree.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unais  Academy',
      theme: ThemeData(primarySwatch: kPrimaryColor),
      home: WelcomeScreen(),
      routes: {
        ConstructionPage.routeName: (ctx) => const ConstructionPage(),
      },
    );
  }
}
