import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/categories/categories.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/home.dart';
import 'package:shoptemplate/UI/modules/nav_screens/favorite/favorite.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/profile.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          changeIndex(value);
        },
        backgroundColor: kDefaultColor,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 27),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Ionicons.home_outline), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.menu), label:'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.heart_outline), label:'Favorites'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label:'Profile'),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  final List<Widget> _children = [
    Home(),
    const Categories(),
    const Favorite(),
    const Profile()
  ];

  void changeIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
