// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:unais_academy_prototype/src/screen/homescreen/course_screen.dart/individual_course.dart';

import '../../../constants.dart';

class CourseListModel {
  int? id;
  final int episode;
  final String caption;
  final int time;
  final colorTheme;
  final durations;

  CourseListModel({
    required this.episode,
    required this.caption,
    required this.time,
    required this.colorTheme,
    required this.durations,
  });
}

List<CourseListModel> courseList = [
  CourseListModel(
    episode: 1,
    caption: 'Introduction to the course',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 2,
    caption: 'Introduction to the course',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 3,
    caption: 'How to get started with youtube',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 4,
    caption: 'Learn to create Video',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 5,
    caption: 'Start editing on your own',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 6,
    caption: 'Learn to create Video',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
    CourseListModel(
    episode: 1,
    caption: 'Introduction to the course',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 2,
    caption: 'Introduction to the course',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 3,
    caption: 'How to get started with youtube',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 4,
    caption: 'Learn to create Video',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 5,
    caption: 'Start editing on your own',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
  CourseListModel(
    episode: 6,
    caption: 'Learn to create Video',
    time: 2,
    colorTheme: kLiteGreen,
    durations: Durations1.hrs,
  ),
];
