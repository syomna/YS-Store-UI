import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/details/product_details.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/products/product_card.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({Key? key, required this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    List subCategories;
    List<List<ProductModel>> collections;
    if (category == 'Women') {
      subCategories = womenSubCategories;
      collections = womenCollections;
    } else if (category == 'Men') {
      subCategories = menSubCategories;
      collections = menCollections;
    } else {
      subCategories = kidsSubCategories;
      collections = kidsCollections;
    }

    return DefaultTabController(
      length: subCategories.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            category,
          ),
          bottom: TabBar(
            indicator: BoxDecoration(
                border: Border.all(color: kDefaultColor),
                borderRadius: BorderRadius.circular(10)),
            isScrollable: true,
            tabs: subCategories.map((e) {
              //  collections = getCollection(e);
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  e,
                ),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
            children: collections.map((e) {
          return _body(context , e);
        }).toList()),
      ),
    );
  }

  Widget _body(context , List<ProductModel> collection) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.2),
        scrollDirection: Axis.vertical,
        itemBuilder: (contxet, index) =>
            InkWell(
              onTap: () => navigateTo(context, ProductDetails(productModel: collection[index])),
              child: ProductCard(productModel: collection[index] , isRatingSmaller: true,)),
        itemCount: collection.length,
      ),
    );
  }
}
