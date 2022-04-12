import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/src/screen/dashboard/ordered_course_screen.dart';
import 'package:unais_academy_prototype/src/screen/homescreen/main_screen.dart';
import 'package:unais_academy_prototype/src/screen/profile/account_screen.dart';
import 'package:unais_academy_prototype/src/screen/search%20screen/search_screen.dart';
import 'package:unais_academy_prototype/src/screen/welcome%20screen/welcome_scree.dart';
import 'package:unais_academy_prototype/src/widgets/bottomnavbar.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.userName}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  final String userName;

  final _pages = [
    MainScreen(
      userName: userNameController.text,
    ),
    const SearchScreen(),
    const DashBoard(),
    const MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () => showAlert(context));
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (BuildContext context, int updatedIndex, _) {
          return _pages[updatedIndex];
        },
      ),
      bottomNavigationBar: const UnaisAcademyBottomNavBar(),
    );
  }
}

// void showAlert(BuildContext context) {
//    const content =
//     'This is a prototype version of this app. lot of features will be added in the production release version.\n\n';
// const head1 = "𝗪𝗵𝗮𝘁'𝘀 𝗶𝗻 𝘁𝗵𝗶𝘀 𝗣𝗿𝗼𝘁𝗼𝘁𝘆𝗽𝗲?\n";
// const content2 = "in this Prototype you will see the entire App's UI. on Alpha release (Production Release) some UI parts will change depends on datas\n";
// const head2 = "𝗙𝗶𝗿𝘀𝘁 𝗣𝗿𝗼𝗱𝘂𝗰𝘁𝗶𝗼𝗻 𝗥𝗲𝗹𝗲𝗮𝘀𝗲";
// const content3 = "to fast and quick release of this app we are going to launch Alpha version of this app First.so in Alpha version we are going to implement upload , delete , update, read and student trackingsystem only rest features will be added in upper version of this app";
// const platform = "𝗣𝗹𝗮𝘁𝗳𝗼𝗿𝗺𝘀";
// const platfordet = "we are going to develop this app for 3 plat form\n\n𝗔𝗻𝗱𝗿𝗼𝗶𝗱 (𝗨𝘀𝗲𝗿)\n𝗜𝗢𝗦 (𝗨𝘀𝗲𝗿)\n𝗪𝗶𝗻𝗱𝗼𝘄𝘀 (𝗔𝗱𝗺𝗶𝗻 𝘀𝗶𝗱𝗲)";
// const conclusion = "read Documentation and other development related details here :  ";
//   showDialog(
//       context: context,
//       builder: (context1) {
//         return AlertDialog(
//           title: const Text('This is a Prototype'),
//           content:SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                     '$content\n$head1\n$content2\n\n$head2\n\n$content3\n\n$platform\n$platfordet\n\n$conclusion'),
//                 Text('https://mishalhaneef.ml',style: TextStyle(color: Colors.blue),)
//               ],
//             ),
//           ),
//           actions: [
//             TextButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text('Close'))
//           ],
//         );
//       });
//      }

