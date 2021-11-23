import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/rating_widget/custom_rating.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key, required this.productModel, this.isRatingSmaller = false})
      : super(key: key);

  final ProductModel productModel;
  final bool isRatingSmaller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  onError: (error, stack) => const Icon(Icons.broken_image),
                  fit: BoxFit.cover,
                  image: NetworkImage(productModel.images[0]),
                )),
              ),

               Padding(
                 padding: const EdgeInsets.symmetric( vertical :  4.0),
                 child: Row(
                   mainAxisAlignment: productModel.offerPrice != 0.0 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.end,
                   children: [
                   
                    if (productModel.offerPrice != 0.0)
                      Container(
                        padding: const EdgeInsets.all(4),
                        margin: const EdgeInsets.only(top: 4),
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle, color: Colors.red),
                        child: const Text('%Offer',
                            style: TextStyle(color: Colors.white)),
                      ),
                        if (productModel.isFavorite != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          productModel.isFavorite == true
                              ? Ionicons.heart
                              : Ionicons.heart_outline,
                          color: Colors.red,
                        ),
                      ),
                   ],
                 ),
               )

            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${productModel.title}',
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      // if (productModel.isFavorite != null)
                      //   Padding(
                      //     padding: const EdgeInsets.only(right: 8.0),
                      //     child: Icon(
                      //       productModel.isFavorite == true
                      //           ? Ionicons.heart
                      //           : Ionicons.heart_outline,
                      //       color: Colors.red,
                      //     ),
                      //   ),
                    ],
                  ),
                ),
                CustomRating(
                  rating: productModel.rating!,
                  size: isRatingSmaller ? 12 : 16,
                ),
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
                const SizedBox(
                  height: 4,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: DefaultButton(
                        widget: Text(
                         productModel.inCart == true
                            ? 'Added to Cart' : 'Add to Cart',
                          style: const TextStyle(color: Colors.white , fontWeight: FontWeight.w400),
                        ),
                        color: productModel.inCart == true
                            ? kDefaultColor
                            : Colors.grey,
                        function: () {}))
              ],
            ),
          )
        ],
      ),
    );
  }
}
