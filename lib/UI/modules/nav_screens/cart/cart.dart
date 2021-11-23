import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/check_out.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';
import 'package:shoptemplate/core/models/product_model.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      _buildcartItem(context, cartProducts[index]),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: cartProducts.length),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              child: DefaultButton(
                  widget: const Text('Check Out' , style: TextStyle(
                    color: Colors.white , fontSize: 18 , fontWeight: FontWeight.w400
                  ),),
                  color: kDefaultColor,
                  function: () {
                    navigateTo(context, const Checkout());
                  }),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildcartItem(context, ProductModel model) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      background: Container(
        color: Colors.red,
        padding: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 35,
        ),
      ),
      onDismissed: (direction) {},
      child: SizedBox(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image(
                image: NetworkImage(model.images.first),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.title}',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (model.offerPrice != 0)
                        Text(
                          '\$ ${model.offerPrice}',
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                      Text(
                        '\$ ${model.price}',
                        style: const TextStyle(
                            color: kDefaultColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildQuantityButton(Icons.remove, () {

                      }),
                      Text(
                        '2',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      buildQuantityButton(Icons.add, () {

                      }),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQuantityButton(IconData icon, Function onPressed) {
    return MaterialButton(
      color: kDefaultColor,
      minWidth: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Icon(icon, color: Colors.white),
      onPressed: onPressed as void Function()?,
    );
  }
}
