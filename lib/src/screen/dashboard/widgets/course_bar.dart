// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

// ignore: must_be_immutable
class CourseBar extends StatelessWidget {
  CourseBar({
    Key? key,
    required this.icon,
    required this.caption,
    required this.time,
    required this.colorTheme,
    required this.duration,
    required this.status,
    required this.screen,
  }) : super(key: key);

  final icon;
  final caption;
  final time;
  final colorTheme;
  final Durations duration;
  final Status status;
  Screen screen;

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
        height: 90,
        child: Column(
          children: [
            const SizedBox(height: 10),
            ListTile(
              leading: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: colorTheme, borderRadius: BorderRadius.circular(16)),
                child: Center(child: Image.asset(icon, height: 30)),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '  $caption',
                    style: const TextStyle(
                        fontFamily: 'Helvatica_lite',
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromARGB(255, 24, 24, 24)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Text(
                      duration == Durations.hrs
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
              trailing: CircleAvatar(
                  backgroundColor:
                      status == Status.onGoing ? kLiteRed : const Color(0xFFAEE2C3),
                  child: status == Status.onGoing
                      ? const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.done,
                          color: Colors.white,
                        )),
                        
              subtitle: screen == Screen.dashBoard
                  ? Row(
                      children: [
                        const SizedBox(width: 5),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Stack(
                            children: [
                              Container(
                                height: 4,
                                width: 162,
                                decoration: BoxDecoration(
                                    color: kDeepBlueTheme,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              (status == Status.onGoing
                                  ? Container(
                                      height: 4,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: kLiteGreen,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    )
                                  : Container(
                                      height: 4,
                                      width: 162,
                                      decoration: BoxDecoration(
                                          color: kLiteGreen,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ))
                            ],
                          ),
                        )
                      ],
                    )
                  : 
                  Column(
                    children: [
                      const SizedBox(height: 7),
                      Row(
                          children: const [
                            Icon(Icons.star, color: Colors.yellow, size: 15),
                            SizedBox(width: 7),
                            Text(
                              '4.5   |   Unais Muhammed',
                              style: TextStyle(
                                fontSize: 12,
                                color: kDeepBlueTheme,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                    ],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Durations {
  hrs,
  mins,
}

enum Status {
  completed,
  onGoing,
}

enum Screen {
  dashBoard,
  showingScreen,
}
