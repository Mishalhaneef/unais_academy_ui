// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class CourseCard {
  final Color color;
  final double rating;
  final icon;
  final caption;
  final head;
  final timePeriod;

  CourseCard({
    required this.color,
    required this.rating,
    required this.icon,
    required this.caption,
    required this.head,
    required this.timePeriod,
  });
}

List<CourseCard> courseCardList = [
  CourseCard(
    color: kLiteRed,
    icon: 'assets/youtube.png',
    caption: 'How To Market Your YouTube Channel',
    head: 'Marketing',
    timePeriod: 18,
    rating: 4.6,
  ),
  CourseCard(
    color: kLiteRose,
    icon: 'assets/chart.png',
    caption: 'Grow Your Channel With this very usefull tips',
    head: 'Channel Growth',
    timePeriod: 18,
    rating: 4.3,
  ),
  CourseCard(
    color: kLiteGreen,
    icon: 'assets/diagram.png',
    caption: 'How to Make Thumbnail Attractive',
    head: 'Creative',
    timePeriod: 18,
    rating: 3.4,
  ),
  CourseCard(
    color: kLiteRose,
    icon: 'assets/calender.png',
    caption: 'Light Your Video Like A Pro',
    head: 'Creative',
    timePeriod: 18,
    rating: 5.0,
  ),
  CourseCard(
    color: kLiteRed,
    icon: 'assets/youtube.png',
    caption: 'How To Market Your YouTube Channel',
    head: 'Marketing',
    timePeriod: 18,
    rating: 3.9,
  ),
  CourseCard(
    color: kLiteRed,
    icon: 'assets/youtube.png',
    caption: 'How To Market Your YouTube Channel',
    head: 'Marketing',
    timePeriod: 18,
    rating: 4.6,
  ),
  CourseCard(
    color: kLiteRose,
    icon: 'assets/chart.png',
    caption: 'Grow Your Channel With this very usefull tips',
    head: 'Channel Growth',
    timePeriod: 18,
    rating: 4.3,
  ),
  CourseCard(
    color: kLiteGreen,
    icon: 'assets/diagram.png',
    caption: 'How to Make Thumbnail Attractive',
    head: 'Creative',
    timePeriod: 18,
    rating: 3.4,
  ),
  CourseCard(
    color: kLiteRose,
    icon: 'assets/calender.png',
    caption: 'Light Your Video Like A Pro',
    head: 'Creative',
    timePeriod: 18,
    rating: 5.0,
  ),
  CourseCard(
    color: kLiteRed,
    icon: 'assets/youtube.png',
    caption: 'How To Market Your YouTube Channel',
    head: 'Marketing',
    timePeriod: 18,
    rating: 3.9,
  ),
];
