import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/check_out.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/products/favorite_cart/favorite_cart_item.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateTo(context, const Checkout());
        },
        child: const Icon(
          Ionicons.bag_check_outline,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (context, index) => FavoriteCartItem(
                  product: cartProducts[index],
                  isCart: true,
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
            itemCount: cartProducts.length),
      ),
    );
  }
}
