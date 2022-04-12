import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/src/model/course_model.dart';
import 'package:unais_academy_prototype/src/screen/common/complete_purchase.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/course_screen.dart/individual_course.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: kHomeColor),
        child: Stack(
          children: [
            Column(
              children: [
                SafeArea(
                  child: Image.asset('assets/youtube.jpg'),
                ),
                const SizedBox(height: 15),
                const HeadRow(),
                const SizedBox(height: 10),
                const ActionRow(),
                const SizedBox(height: 20),
                const Divider(),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 30),
                            Text("What's in this Course ?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  fontFamily: 'Helvatica',
                                )),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            SizedBox(width: 30),
                            Text(
                              '- How to start a youtube channel\n- How to name a YT channel and \n   find a niche?\n- How to come up with a Youtube growth strategy?\n- How to start generating \n   revenue from your YT channel?',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(height: 1),
                        ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            final data = courseList[index];
                            return IndividCourseBar(
                              episode: index + 1,
                              caption: data.caption,
                              time: data.time,
                              colorTheme: data.colorTheme,
                              duration: data.durations,
                            );
                          },
                          itemCount: courseList.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(height: 20);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
            const BuyNowButton()
          ],
        ),
      ),
    );
  }
}

//============================ WiDGETS

//==Buy Now Button Widgets
class BuyNowButton extends StatefulWidget {
  const BuyNowButton({Key? key}) : super(key: key);

  @override
  State<BuyNowButton> createState() => _BuyNowButtonState();
}

class _BuyNowButtonState extends State<BuyNowButton> {
  bool isClosed = false;
  @override
  Widget build(BuildContext context) {
    return !isClosed
        ? Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 50,
                        color: kTextColor.withOpacity(.1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(14),
                        height: 56,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFEDEE),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child:
                            SvgPicture.asset("assets/icons/shopping-bag.svg"),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CompletePopup(),
                              ),
                            );
                            setState(() {
                              isClosed = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: kBlueColor,
                            ),
                            child: Text(
                              "Buy Now",
                              style: kSubtitleTextStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}

// ========= Heading Row

class HeadRow extends StatelessWidget {
  const HeadRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 80,
              child: const Text(
                'Introduction To Youtube master course',
                maxLines: 2,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              ),
            ),
            const Icon(Icons.bookmark)
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            const SizedBox(width: 30),
            Text(
              '234,234' " views ",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Colors
const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFFFFD073);
const kGreenColor = Color(0xFF49CC96);

// My Text Styles
const kHeadingextStyle = TextStyle(
  fontSize: 28,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);
const kSubheadingextStyle = TextStyle(
  fontSize: 24,
  color: Color(0xFF61688B),
  height: 2,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  color: kTextColor,
  fontWeight: FontWeight.bold,
);

const kSubtitleTextStyle = TextStyle(
  fontSize: 18,
  color: kTextColor,
  // fontWeight: FontWeight.bold,
);

//====== Action Row

class ActionRow extends StatelessWidget {
  const ActionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 33, left: 33),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Icon(
                Icons.thumb_up_alt_rounded,
                color: Color.fromARGB(255, 27, 27, 27),
              ),
              SizedBox(height: 2),
              Text(
                '23',
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 5, 5),
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.thumb_down_alt_outlined,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              SizedBox(height: 2),
              Text(
                '2',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(
                Icons.download_rounded,
                color: Color.fromARGB(255, 3, 3, 3),
              ),
              SizedBox(height: 2),
              Text(
                "offline",
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 3, 3),
                  fontSize: 12,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class CourseContent extends StatelessWidget {
//   final String number;
//   final double duration;
//   final String title;
//   final bool isDone;
//   const CourseContent({
//     Key? key,
//     required this.number,
//     required this.duration,
//     required this.title,
//     this.isDone = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 30),
//       child: Row(
//         children: <Widget>[
//           Text(
//             number,
//             style: kHeadingextStyle.copyWith(
//               color: kTextColor.withOpacity(.15),
//               fontSize: 32,
//             ),
//           ),
//           const SizedBox(width: 20),
//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "$duration mins\n",
//                   style: TextStyle(
//                     color: kTextColor.withOpacity(.5),
//                     fontSize: 18,
//                   ),
//                 ),
//                 TextSpan(
//                   text: title,
//                   style: kSubtitleTextSyule.copyWith(
//                     fontWeight: FontWeight.w600,
//                     height: 1.5,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const Spacer(),
//           Container(
//             margin: const EdgeInsets.only(left: 20),
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: kGreenColor.withOpacity(isDone ? 1 : .5),
//             ),
//             child: const Icon(Icons.play_arrow, color: Colors.white),
//           )
//         ],
//       ),
//     );
//   }
// }