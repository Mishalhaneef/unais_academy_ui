import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/appbar.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/card_view.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/drawerwidget.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/first_course_lsit.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/second_course_list.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/secondrow.dart';

import 'widgets/welcome.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kHomeColor),
      child: Scaffold(
        drawer: const NavigationDrawerWidget(),
        //appBar code
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Column(
            children: [const SizedBox(height: 2), AppBarWidget()],
          ),
        ),
        backgroundColor: Colors.transparent,
        //body code
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 37),
                WelcomeWidget(userName: userName),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 0),
                  child: Text(
                    "Find a course you want to learn",
                    style: secondRichText,
                  ),
                ),
                // ignore: sized_box_for_whitespace
                CardView(
                  backgroundColor: kLinearColorBlue,
                  buttonText: 'Join Now!',
                  headText: '50% off',
                  personImage: 'assets/person_home.png',
                  secondText: 'For Any Course!',
                ),
                const SizedBox(height: 18),
                SecondRow(),
                const SizedBox(height: 1),
                FirstCourseLIstRow(),
                const SizedBox(height: 14),
                const Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Divider(height: 1),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Your Course', style: helperTextStyle),
                ),
                const SizedBox(height: 22),

                //my course section
                SecondCourseListRow(),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
