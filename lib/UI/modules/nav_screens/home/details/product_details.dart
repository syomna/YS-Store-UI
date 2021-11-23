import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/products/details/details_body.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key, required this.productModel}) : super(key: key);

  final ProductModel productModel;

  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const LogoTitle(
      //     isBackgroundWhite: true,
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 20),
      //       child: Icon(
      //         productModel.isFavorite == true
      //             ? Ionicons.heart
      //             : Ionicons.heart_outline,
      //         color: Colors.red,
      //       ),
      //     )
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DetailsBody(
                pageController: pageController, productModel: productModel),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Row(
                  children: [
                    Expanded(
                      child: DefaultButton(
                          widget: Text( productModel.inCart == true ? 'Added To Cart' : 'Add To Cart' , style: TextStyle(
                           color : productModel.inCart == true ? Colors.white : Colors.black
                          ),),
                          color: productModel.inCart == true ? kDefaultColor : Colors.grey.shade400,
                          function: () {}),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: DefaultButton(
                          widget: const Text(
                            'Buy Now',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: kDefaultColor,
                          function: () {}),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
