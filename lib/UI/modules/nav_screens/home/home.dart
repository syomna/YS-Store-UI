import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/logo/logo_title.dart';
import 'package:shoptemplate/UI/widgets/products/home/home_body.dart';

class Home extends StatelessWidget {
  final PageController pageController = PageController();

   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoTitle(),
        backgroundColor: kDefaultColor,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Ionicons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: HomeBody(pageController: pageController),
    );
  }
}
