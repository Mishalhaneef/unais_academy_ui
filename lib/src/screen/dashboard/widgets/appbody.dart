import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/common/construction_page.dart';
import 'package:unais_academy_prototype/src/screen/dashboard/widgets/course_bar.dart';

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: kHomeColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadWidget(),
          const SizedBox(height: 30),
          UserAccountWidget(),
          const SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Text(description,
                  style:
                      TextStyle(fontFamily: 'Helvatica_lite', fontSize: 14))),
          const SizedBox(height: 30),
          CourseDetails(),
          CourseList()
        ],
      ),
    );
  }
}




//Widgets 

class CourseList extends StatelessWidget {
  const CourseList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          final data = myCourseBar[index];

          return CourseBar(
            icon: data.icon,
            caption: data.caption,
            time: data.time,
            colorTheme: data.colorTheme,
            duration: data.duration,
            status: data.status,
            screen: Screen.dashBoard,
          );
        },
        itemCount: myCourseBar.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}

class CourseDetails extends StatelessWidget {
  const CourseDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Courses', style: helperTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: TextButton(
              // ignore: prefer_const_constructors
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
              ),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(ConstructionPage.routeName);
              },
              child: Row(
                children: const [
                  Icon(Icons.access_time,
                      size: 17, color: kDeepBlueTheme),
                  SizedBox(width: 7),
                  Text(
                    '2 Hours',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: kDeepBlueTheme,
                    ),
                  ),
                  SizedBox(width: 45),
                ],
              )),
        )
      ],
    );
  }
}

class UserAccountWidget extends StatelessWidget {
  const UserAccountWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 30),
          child: CircleAvatar(
            radius: 19.0,
            child: ClipRRect(
              child: Image.asset('assets/account.jpg'),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        const Text(
          'Mishal Haneef',
          style: TextStyle(
              color: Color.fromARGB(255, 255, 105, 78),
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class HeadWidget extends StatelessWidget {
  const HeadWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 0, top: 30),
              child: Text("Your Course", style: headRichText),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 0),
              child: Text("All purchased course", style: secondRichText),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(28.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('assets/icons/Saved.png'),
          ),
        )
      ],
    );
  }
}

class MyCourseList {
  final icon;
  final caption;
  final time;
  final colorTheme;
  final Durations duration;
  final Status status;

  MyCourseList({
    required this.status,
    required this.icon,
    required this.caption,
    required this.time,
    required this.colorTheme,
    required this.duration,
  });
}

List<MyCourseList> myCourseBar = [
  MyCourseList(
    icon: 'assets/calender.png',
    caption: 'Channel Marketing',
    time: 37,
    colorTheme: kLiteRose,
    duration: Durations.mins,
    status: Status.completed,
  ),
  MyCourseList(
    icon: 'assets/chart.png',
    caption: 'Channel Monitization',
    time: 34,
    colorTheme: kLiteOrange,
    duration: Durations.mins,
    status: Status.onGoing,
  ),
  MyCourseList(
    icon: 'assets/diagram.png',
    caption: 'Channel Creation',
    time: 23,
    colorTheme: kLiteRed,
    duration: Durations.hrs,
    status: Status.completed,
  ),
  MyCourseList(
    icon: 'assets/calender.png',
    caption: 'Channel Marketing',
    time: 37,
    colorTheme: kLiteRose,
    duration: Durations.mins,
    status: Status.completed,
  ),
];
