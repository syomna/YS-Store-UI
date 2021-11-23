import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/widgets/products/favorite_cart/favorite_cart_item.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Favorites'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (contxet, index) {
              return FavoriteCartItem(product: salesProducts[index]);
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: salesProducts.length),
      ),
    );
  }
}
