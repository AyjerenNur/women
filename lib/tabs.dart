import 'package:flutter/material.dart';
import 'package:woman/colors.dart';
import 'package:woman/tabs/chat.dart';
import 'package:woman/tabs/favorite.dart';
import 'package:woman/tabs/home.dart';
import 'package:woman/tabs/profile.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  late TabController cntrl = TabController(length: 4, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller: cntrl,
          children: [Profile(), HomeScreeen(), Favorite(), Chat()]),
      bottomNavigationBar: Material(
        color: darkpink,
        child: TabBar(controller: cntrl, tabs: [
          Tab(
            icon: Icon(Icons.person),
          ),
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.favorite),
          ),
          Tab(
            icon: Icon(Icons.chat),
          ),
        ]),
      ),
    );
  }
}
