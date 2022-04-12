// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/course_screen.dart/course_screen.dart';

class CourseList extends StatelessWidget {
  const CourseList({
    Key? key,
    required this.color,
    required this.icon,
    required this.caption,
    required this.head,
    required this.timePeriod,
    required this.rating,
  }) : super(key: key);

  final Color color;
  final double rating;
  final icon;
  final caption;
  final head;
  final timePeriod;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => const DetailsScreen()),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 182,
            height: 251,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.only(top: 125, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    head,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontFamily: 'Helvatica',
                        color: Color.fromARGB(255, 255, 139, 30)),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      caption,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                        height: 1.2,
                        fontSize: 15,
                        color: Color.fromARGB(
                          255,
                          24,
                          24,
                          24,
                        ),
                        fontFamily: 'Helvatica',
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 15),
                      const SizedBox(width: 7),
                      Text(
                        '$rating',
                        style: const TextStyle(
                          fontSize: 12,
                          color: kDeepBlueTheme,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.access_time,
                              size: 17, color: kDeepBlueTheme),
                          const SizedBox(width: 7),
                          Text(
                            '$timePeriod Hours',
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: kDeepBlueTheme),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => const DetailsScreen()),
                              ),
                            );
                          },
                          icon: Icon(Icons.play_circle_rounded,
                              color: kDeepBlueTheme.withAlpha(100), size: 30),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 182,
            height: 110,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(16)),
            child: Center(child: Image.asset(icon, height: 60)),
          ),
        ],
      ),
    );
  }
}
