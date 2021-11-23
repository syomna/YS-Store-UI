import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/details/product_details.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/products/product_card.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({Key? key, this.isOffers = false}) : super(key: key);

  final bool isOffers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isOffers ? 'Offers' : 'New Arrivals',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.65),
            itemCount: isOffers ? salesProducts.length : products.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  navigateTo(
                      context,
                      ProductDetails(
                          productModel: isOffers
                              ? salesProducts[index]
                              : products[index]));
                },
                child: ProductCard(

                  productModel:
                      isOffers ? salesProducts[index] : products[index],
                      isRatingSmaller: true,
                ),
              );
            }),
      ),
    );
  }
}
