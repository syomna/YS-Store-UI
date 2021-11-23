import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/cart.dart';
import 'package:shoptemplate/UI/modules/nav_screens/categories/categories.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/home.dart';
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
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        unselectedItemColor: Colors.black,
        selectedItemColor: kDefaultColor,
        

        items: [
          SalomonBottomBarItem(
            activeIcon: const Icon(Ionicons.home),
              icon: const Icon(Ionicons.home_outline),
              title: const Text('Home')),
          SalomonBottomBarItem(
            selectedColor: Colors.amber,
              icon: const Icon(Ionicons.menu), title: const Text('Categories')),
          SalomonBottomBarItem(
            activeIcon: const Icon(Ionicons.cart),
            selectedColor: Colors.pink,
              icon: const Icon(Ionicons.cart_outline),
              title: const Text('Cart')),
          SalomonBottomBarItem(
            activeIcon: const Icon(Ionicons.person),
            selectedColor: Colors.blue,
              icon: const Icon(Ionicons.person_outline),
              title: const Text('Profile')),
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  final List<Widget> _children = [
    Home(),
    const Categories(),
    const Cart(),
    const Profile()
  ];

  void changeIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
