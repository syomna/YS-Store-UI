import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/rating_widget/custom_rating.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productModel,
    this.isRatingSmaller = false
  }) : super(key: key);

  final ProductModel productModel;
  final bool isRatingSmaller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          border: Border.all(color: kDefaultColor),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      onError: (error, stack) => const Icon(Icons.broken_image),
                      fit: BoxFit.cover,
                      image: NetworkImage(productModel.images[0]),
                    )),
                  ),
                  Row(
                    children: [
                      if (productModel.offerPrice != 0.0)
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle, color: kDefaultColor),
                          child: const Text('%Offer',
                              style: TextStyle(color: Colors.white)),
                        ),
                      const Spacer(),
                      if (productModel.isFavorite != null)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            productModel.isFavorite == true
                                ? Ionicons.heart
                                : Ionicons.heart_outline,
                            color: Colors.red,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${productModel.title}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                CustomRating(rating: productModel.rating! , size: isRatingSmaller ? 12 : 16,),
                const SizedBox(
                  height: 4,
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      children: [
                        if (productModel.offerPrice != 0.0)
                          Text(
                            '\$${productModel.offerPrice}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        const SizedBox(width: 4),
                        Text(
                          '\$${productModel.price}',
                          style: TextStyle(
                              fontWeight: productModel.offerPrice != 0.0
                                  ? FontWeight.normal
                                  : FontWeight.bold,
                              color: productModel.offerPrice != 0.0
                                  ? Colors.black54
                                  : Colors.black,
                              decoration: productModel.offerPrice != 0.0
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
