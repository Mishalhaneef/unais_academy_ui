import 'package:flutter/material.dart';
import 'package:unais_academy_prototype/constants.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    const name = 'Mishal Haneef';
    const email = 'msldroidofficial@gmail.com';
    const urlImage = 'assets/account.jpg';
    // ignore: prefer_const_constructors
    return Drawer(
      // ignore: prefer_const_constructors
      child: Material(
        color: kDeepBlueTheme,
        child: ListView(
          padding: padding,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: kDeepBlueTheme.withGreen(130),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () {},
              ),
            ),
            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Account',
              icon: Icons.people,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Dash Board',
              icon: Icons.dashboard,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Explore',
              icon: Icons.explore,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Wishlist',
              icon: Icons.info,
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 24),
            const Divider(color: Colors.white70),
            const SizedBox(height: 24),
            buildMenuItem(
              text: 'Terms &',
              icon: Icons.info,
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Logout',
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {},
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onClicked,
        child: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(urlImage),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 14, color: Colors.white),
                  )
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}