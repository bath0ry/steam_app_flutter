import 'package:flutter/material.dart';

import 'package:steam_app/src/home/view/widgets/drawer_home_page.dart';
import 'package:steam_app/src/home/view/widgets/home_page_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: const Color.fromARGB(255, 34, 34, 34),
        body: HomePageWidgets());
  }
}
