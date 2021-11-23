import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/widgets/rating_widget/custom_rating.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.rating,
      required this.review})
      : super(key: key);

  final String image;
  final String name;
  final double rating;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
        CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              image,

            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(name , style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomRating(rating: rating),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                review,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                
              ),
            ],
          )
        ],
      ),
    );
  }
}
