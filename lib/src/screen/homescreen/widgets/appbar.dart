import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/homescreen.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kMainTheme,
      leading: Builder(builder: (BuildContext context) {
        return IconButton(
          icon: SvgPicture.asset(
            'assets/icons/sidebar.svg',
            color: Colors.black,
          ),
          iconSize: 10,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      }),
      actions: [
        // IconButton(
        //     onPressed: () {
        //       showAlert(context);
        //     },
        //     icon: Icon(Icons.question_mark, color: Colors.black,)),
        IconButton(
          onPressed: () {
            HomeScreen.selectedIndexNotifier.value = 1;
          },
          icon: SvgPicture.asset('assets/icons/search.svg'),
        ),
        const SizedBox(width: 10),
        GestureDetector(
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
        const SizedBox(width: 20)
      ],
    );
  }
}