import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/homescreen.dart';
import 'package:unais_academy_prototype/src/model/model_course_tile.dart';
import 'package:unais_academy_prototype/src/screen/dashboard/widgets/course_bar.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/widgets/drawerwidget.dart';
import 'package:unais_academy_prototype/src/screen/search%20screen/widget/searchbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: kHomeColor),
      child: Scaffold(
        //code for navigation drawer
        drawer: const NavigationDrawerWidget(),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              height: 381,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: kLinearColorBlue,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //search screen's app bar section
                    const TopBar(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Search", style: headRichTextDark),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Text("Seacrh Your Course",
                              style: secondRichTextDark),
                        ),
                        SizedBox(height: 25)
                      ],
                    ),
                    const SearchBar(),
                    const SizedBox(height: 50),
                    const Padding(
                      padding: EdgeInsets.only(right: 50, left: 50),
                      child: Text(
                        'Search the course you need to take and enroll now. Now on 50% offers each courses',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 168, 184, 206)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final data = myCourseBar[index];
                  return CourseBar(
                    screen: Screen.showingScreen,
                    icon: data.icon,
                    caption: data.caption,
                    time: data.time,
                    colorTheme: data.colorTheme,
                    duration: data.durations,
                    status: Status.onGoing,
                  );
                },
                itemCount: myCourseBar.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 20);
                },
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: SvgPicture.asset(
                'assets/icons/sidebar.svg',
                color: Colors.white,
              ),
              iconSize: 10,
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              HomeScreen.selectedIndexNotifier.value = 3;
            },
            child: CircleAvatar(
              radius: 16.0,
              child: ClipRRect(
                child: Image.asset('assets/account.jpg'),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


