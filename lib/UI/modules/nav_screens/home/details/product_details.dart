import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/widgets/logo/logo_title.dart';
import 'package:shoptemplate/UI/widgets/products/details/details_body.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key, required this.productModel}) : super(key: key);

  final ProductModel productModel;

  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const LogoTitle(
          isBackgroundWhite: true,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              productModel.isFavorite == true
                  ? Ionicons.heart
                  : Ionicons.heart_outline,
              color: Colors.red,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          productModel.inCart == true
              ? Icons.shopping_cart
              : Icons.add_shopping_cart_rounded,
          color: Colors.white,
        ),
      ),
      body: DetailsBody(
          pageController: pageController, productModel: productModel),
    );
  }
}
