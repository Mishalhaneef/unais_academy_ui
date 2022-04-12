import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/src/model/course_model_hor.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/course_list.dart';

class FirstCourseLIstRow extends StatelessWidget {
  const FirstCourseLIstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 30),
          SizedBox(
            height: 250,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: courseCardList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final data = courseCardList[index];
                return Row(
                  children: [
                    CourseList(
                      color: data.color,
                      icon: data.icon,
                      caption: data.caption,
                      head: data.head,
                      timePeriod: data.timePeriod,
                      rating: data.rating,
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 20,
                );
              },
            ),
          ),
          const SizedBox(width: 20)
        ],
      ),
    );
  }
}
