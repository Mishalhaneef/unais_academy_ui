import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class AccountCard extends StatelessWidget {
  const AccountCard(
      {Key? key,
      required this.name,
      required this.channelName,
      required this.courseCount,
      required this.subscribers})
      : super(key: key);

  final String name;
  final String channelName;
  final String courseCount;
  final String subscribers;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: kLinearColorBlue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 2 - 320),
            SizedBox(
                width: double.infinity,
                height: 203,
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 18, right: 18, top: 8, bottom: 8),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF415163)),
                        child: Stack(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(28, 28, 28, 0),
                                child: Content(
                                    name: name,
                                    channelName: channelName,
                                    courseCount: courseCount,
                                    subscribers: subscribers)),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 28),
                              child: profileSection(context),
                            ),
                          ],
                        ))))
          ],
        )
      ],
    );
  }
}

class Content extends StatelessWidget {
  const Content(
      {Key? key,
      required this.name,
      required this.channelName,
      required this.courseCount,
      required this.subscribers})
      : super(key: key);
  final String name;
  final String channelName;
  final String courseCount;
  final String subscribers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 0),
          child: Text(
            name,
            style: const TextStyle(
                fontSize: 26,
                color: kMainblueTheme,
                fontWeight: FontWeight.bold,
                fontFamily: 'Helvatica'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 0, top: 6, bottom: 0),
          child: Text(
            channelName,
            style: const TextStyle(
                fontSize: 17,
                color: Color.fromARGB(255, 192, 201, 206),
                height: 1.4,
                fontWeight: FontWeight.w300,
                fontFamily: 'Helvatica'),
          ),
        ),
        Row(
          children: [
            Column(
              children: [
                const SizedBox(height: 17),
                Text(courseCount,
                    style: const TextStyle(
                      color: kMainblueTheme,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(height: 4),
                const Text(
                  'Course',
                  style: TextStyle(color: Color.fromARGB(255, 176, 186, 190)),
                )
              ],
            ),
            const SizedBox(
              height: 80,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: VerticalDivider(
                  color: Color.fromARGB(255, 162, 171, 175),
                  thickness: 1,
                  indent: 25,
                  endIndent: 6,
                  width: 20,
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 17),
                Text(
                  subscribers,
                  style: const TextStyle(
                      color: kMainblueTheme, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Subscribers',
                  style: TextStyle(
                    color: Color.fromARGB(255, 176, 186, 190),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AccountImage extends StatelessWidget {
  const AccountImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(148, 41, 40, 40),
            blurRadius: 20.0,
          ),
        ],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black12),
        color: Colors.transparent,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/account.jpg'),
        ),
      ),
    );
  }
}

Widget profileSection(context) {
  return Row(
    children: [
      Container(width: MediaQuery.of(context).size.width / 2 + 10),
      Column(
        children: [
          const AccountImage(),
          const SizedBox(height: 3),
          IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.grey,
                size: 13,
              )),
        ],
      )
    ],
  );
}
