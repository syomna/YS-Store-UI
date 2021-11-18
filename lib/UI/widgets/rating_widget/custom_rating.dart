import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({Key? key, required this.rating, this.size = 16})
      : super(key: key);

  final double rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      itemSize: size,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) => const Icon(
        Ionicons.star,
        color: kDefaultColor,
      ),
      onRatingUpdate: (rating) {
      
      },
    );
  }
}
