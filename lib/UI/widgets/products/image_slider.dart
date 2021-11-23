import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider(
      {Key? key, required this.pageController, required this.imagesList})
      : super(key: key);

  final PageController pageController;
  final List imagesList;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: imagesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 0.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imagesList[index],
                  fit: BoxFit.fill,
                  errorBuilder: (context, child, strack) =>
                      const Icon(Icons.broken_image),
                )),
          ),
        );
      },
    );
  }
}
