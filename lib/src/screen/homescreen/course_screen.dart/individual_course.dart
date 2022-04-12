// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class IndividCourseBar extends StatelessWidget {
  const IndividCourseBar({
    Key? key,
    required this.episode,
    required this.caption,
    required this.time,
    required this.colorTheme,
    required this.duration,
  }) : super(key: key);

  final episode;
  final caption;
  final time;
  final colorTheme;
  final Durations1 duration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
        height: 75,
        child: Column(
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: Text(
                '$episode',
                style: const TextStyle(
                  fontSize: 28,
                  color: Color(0xFF0D1333),
                  fontWeight: FontWeight.bold,
                ).copyWith(
                  color: const Color(0xFF0D1333).withOpacity(.15),
                  fontSize: 32,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  $caption',

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontFamily: 'Helvatica',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 103, 104, 131)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Text(
                      duration == Durations1.hrs
                          ? '  $time hrs'
                          : '  $time mins',
                      style: const TextStyle(
                        color: kDeepBlueTheme,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              trailing: const CircleAvatar(
                  backgroundColor: kLiteRed,
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

enum Durations1 {
  hrs,
  mins,
}
