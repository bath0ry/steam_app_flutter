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
                'https://media.licdn.com/dms/image/D4D35AQEEb9zkwraB_A/profile-framedphoto-shrink_200_200/0/1677322109174?e=1677974400&v=beta&t=nlwAmxdCTyZR62w-xCGA-wNr2lHPTj932ShK-x0XZdk',
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
