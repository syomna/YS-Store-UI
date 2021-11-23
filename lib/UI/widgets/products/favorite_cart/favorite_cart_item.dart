import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/details/product_details.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class FavoriteCartItem extends StatelessWidget {
  const FavoriteCartItem({Key? key, required this.product, this.isCart = false})
      : super(key: key);

  final ProductModel product;
  final bool isCart;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: const Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          Ionicons.trash_bin,
          color: Colors.red,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () =>
              navigateTo(context, ProductDetails(productModel: product)),
          leading: Image(image: NetworkImage(product.images.first)),
          title: Text('${product.title}'),
          subtitle: Text(product.offerPrice != 0.0
              ? '\$${product.offerPrice}'
              : '\$${product.price}'),
          trailing: isCart
              ? Column(
                  children: const [
                    Expanded(
                        child: Icon(
                      Ionicons.add_circle,
                      color: kDefaultColor,
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(child: Text('4')),
                    Expanded(
                        child: Icon(
                      Ionicons.remove_circle,
                      color: kDefaultColor,
                    ))
                  ],
                )
              : MaterialButton(
                  onPressed: () {},
                  color: product.inCart == true ?  kDefaultColor : Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text(
                    product.inCart == true ? 'Added to cart' : 'Add to cart',
                    style: const TextStyle(color: Colors.white , fontWeight: FontWeight.w300),
                  ),
                ),
        ),
      ),
    );
  }
}
