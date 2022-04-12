import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/homescreen.dart';
import 'package:unais_academy_prototype/src/widgets/bottom_navy_bar.dart';

class UnaisAcademyBottomNavBar extends StatelessWidget {
  const UnaisAcademyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? child) {
        return BottomNavyBar(
          items: [
            BottomNavyBarItem(
              icon: updatedIndex == 0
                    ? Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: SvgPicture.asset('assets/icons/home_logo.svg',height: 20,
                          color: Colors.white),
                    )
                    : SvgPicture.asset('assets/icons/home_logo.svg',height: 20,
                        color: kDeepBlueTheme),
              title: const Padding(
                padding: EdgeInsets.only(left: 7,top: 2),
                child: Text('Home'),
              ),
              activeColor: kDeepBlueTheme.withAlpha(470),
            ),
            BottomNavyBarItem(
                // ignore: unrelated_type_equality_checks
                icon: updatedIndex == 1
                    ? SvgPicture.asset('assets/icons/search.svg',
                        color: Colors.white)
                    : SvgPicture.asset('assets/icons/search.svg',
                        color: kDeepBlueTheme),
                title: const Padding(
                padding:  EdgeInsets.only(left: 7,top: 2),
                child: Text('Search'),
              ),
                activeColor: kDeepBlueTheme.withAlpha(470)),
            BottomNavyBarItem(
                icon: updatedIndex == 2 
                ? const Icon(Icons.dashboard)
                : const Icon(Icons.dashboard_outlined)
                ,
                title: const Padding(
                padding:  EdgeInsets.only(left: 7,top: 2),
                child: Text('Course'),
              ),
                activeColor: kDeepBlueTheme.withAlpha(470)),
            BottomNavyBarItem(
                icon: updatedIndex == 3 
                ? const Icon(Icons.person)
                : const Icon(Icons.person_outlined),
                title: const Text('Account'),
                activeColor: kDeepBlueTheme.withAlpha(470)),
          ],
          
          itemCornerRadius: 100,
          backgroundColor: kMainblueTheme,
          showElevation: false,
          selectedIndex: updatedIndex,
          onItemSelected: (newIndex) {
            HomeScreen.selectedIndexNotifier.value = newIndex;
          },
        );
      },
    );
  }
}
