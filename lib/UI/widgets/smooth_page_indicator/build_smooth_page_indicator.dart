import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildSmoothPageIndicator extends StatelessWidget {
  const BuildSmoothPageIndicator(
      {Key? key,
      required this.pageController,
      required this.list,
      this.isExpandingDots = false})
      : super(key: key);

  final PageController pageController;
  final List list;
  final bool isExpandingDots;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: list.length,
      effect:  ExpandingDotsEffect(
              activeDotColor: kDefaultColor,
              dotWidth: 10,
              dotHeight: 10,
              dotColor: Colors.grey.withOpacity(0.4))
         
    );
  }
}
