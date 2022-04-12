import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/src/model/model_course_tile.dart';
import 'package:unais_academy_prototype/src/screen/dashboard/widgets/course_bar.dart';

class SecondCourseListRow extends StatelessWidget {
  const SecondCourseListRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
            duration: data.durations,
            status: data.statuss,
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
