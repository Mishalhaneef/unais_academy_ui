import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unais_academy_prototype/constants.dart';
import 'package:unais_academy_prototype/homescreen.dart';
import 'package:unais_academy_prototype/src/model/account_tile_model.dart';
import 'package:unais_academy_prototype/src/screen/profile/widget/accountcard.dart';
import 'package:unais_academy_prototype/src/screen/welcome%20screen/welcome_scree.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3000,
      decoration: const BoxDecoration(gradient: kHomeColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AccountCard(
              name: userNameController.text.toUpperCase(),
              channelName: channelNameController.text.toUpperCase(),
              courseCount: '3',
              subscribers: '65K',
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final data = dataList[index];
                  return ListTile(
                    title: Text(
                      data.title,
                      style: GoogleFonts.roboto(
                        color: kDeepBlueTheme.withAlpha(230),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    leading: Icon(
                      data.icon,
                      color: const Color.fromARGB(255, 76, 98, 128),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: kDeepBlueTheme,
                    ),
                    onTap: (() async {
                      switch (index) {
                        case 4:
                          userNameController.clear();
                          channelNameController.clear();
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => WelcomeScreen()),
                            (Route<dynamic> route) => false,
                          );
                          HomeScreen.selectedIndexNotifier.value = 0;
                          break;
                      }
                    }),
                  );
                },
                itemCount: dataList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
