import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://github.com/bath0ry');

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 87, 87, 87)),
            accountName: Text(
              "Paulo Gomes",
              style: TextStyle(fontSize: 18),
            ),
            accountEmail: Text("gentopaulo@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4D03AQHaaBBKYXDoGg/profile-displayphoto-shrink_200_200/0/1658876659258?e=1674691200&v=beta&t=7v7rR-hN22xyt9FIdmflUyeCaCPfINbDzX8Q1Jsfk50',
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
          ListTile(
              leading: const FaIcon(
                FontAwesomeIcons.github,
                color: Colors.white,
              ),
              title: const Text(
                "Github",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: const Text("meu github",
                  style: TextStyle(color: Colors.white)),
              trailing: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onTap: () {
                _launchUrl();
              }),
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            child: Text(
              'Powered by bath0ry',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
