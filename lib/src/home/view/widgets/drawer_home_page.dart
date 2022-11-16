import 'package:flutter/material.dart';

import 'package:flutter_web_browser/flutter_web_browser.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
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
