// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:unais_academy_prototype/src/screen/dashboard/widgets/course_bar.dart';

import '../../../constants.dart';

class MyCourseList {
  final icon;
  final caption;
  final time;
  final colorTheme;
  final Durations durations;
  final Status statuss;

  MyCourseList({
    required this.statuss,
    required this.icon,
    required this.caption,
    required this.time,
    required this.colorTheme,
    required this.durations,
  });
}

List<MyCourseList> myCourseBar = [
  MyCourseList(
    icon: 'assets/calender.png',
    caption: 'Channel Marketing',
    time: 37,
    colorTheme: kLiteRose,
    durations: Durations.mins,
    statuss: Status.completed,
  ),
  MyCourseList(
    icon: 'assets/chart.png',
    caption: 'Channel Monitization',
    time: 34,
    colorTheme: kLiteOrange,
    durations: Durations.mins,
    statuss: Status.onGoing,
  ),
  MyCourseList(
    icon: 'assets/diagram.png',
    caption: 'Channel Creation',
    time: 23,
    colorTheme: kLiteRed,
    durations: Durations.hrs,
    statuss: Status.completed,
  ),
  MyCourseList(
    icon: 'assets/calender.png',
    caption: 'Channel Marketing',
    time: 37,
    colorTheme: kLiteRose,
    durations: Durations.mins,
    statuss: Status.completed,
  ),
  
];
