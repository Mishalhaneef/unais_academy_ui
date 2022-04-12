import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unais_academy_prototype/homescreen.dart';
import 'package:unais_academy_prototype/src/screen/welcome%20screen/widget/textfield.dart';
import '../../../constants.dart';

TextEditingController userNameController = TextEditingController();
TextEditingController channelNameController = TextEditingController();

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/design_el_1.png')),
          Center(child: Image.asset('assets/UNAIS ACADEMY.png')),
          ModernTextField(
            text: 'Enter Your Name',
            controller: userNameController,
          ),
          const SizedBox(height: 20),
          ModernTextField(
            text: 'Enter Your Channel Name',
            controller: channelNameController,
          ),
          const SizedBox(height: 20),
          SvgPicture.asset('assets/welcome_illustator.svg', height: 300)
        ],
      ),
      //floating action button for getting started button
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          onPressed(context);
        },
        //label
        label: Row(
          children: [
            const Text('Get Started'),
            const SizedBox(width: 5),
            Image.asset('assets/play.png', color: kMainTheme, height: 15),
          ],
        ),
      ),
    );
  }

  onPressed(context) {
    userNameController.text.isEmpty || channelNameController.text.isEmpty
        ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
            content: Text('Enter User Name and Channel Name'),
            duration: Duration(seconds: 5),
          ))
        : Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>
                    HomeScreen(userName: userNameController.text)),
            (Route<dynamic> route) => false,
          );
  }
}
