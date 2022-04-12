import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/dashboard/widgets/appbody.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSizes = MediaQuery.of(context).size;
    const description =
        "Your all purchased course are listed here,you can listen this whenever you want,lesson progress will show in your dashboard";
    return Container(
      decoration: const BoxDecoration(gradient: kHomeColor),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(color: kDeepBlueTheme),
              ),
              Positioned(
                height: 320,
                width: screenSizes.width * 2 / 1 - 390,
                child: Image.asset('assets/3dbg.png'),
              ),
              Positioned(
                height: 250,
                width: screenSizes.width * 2 / 1 - 230,
                child: Image.asset('assets/person_course.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: AppBody(description: description),
              )
            ],
          )),
    );
  }
}
