import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/modules/nav_screens/cart/check_out/complete.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class Preview extends StatelessWidget {
  const Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${cartProducts[index].title}'),
                    subtitle: Text(cartProducts[index].offerPrice != 0.0
                        ? '\$${cartProducts[index].offerPrice}'
                        : '\$${cartProducts[index].price}'),
                    leading: Image.network(
                      cartProducts[index].images.first,
                      errorBuilder: (context, child, stack) {
                        return const Icon(Icons.broken_image);
                      },
                    ),
                    trailing: const Text('Quantity : x4'),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                itemCount: cartProducts.length),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fees :', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$20', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Total :', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('\$1280', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 40),
          DefaultButton(
              widget: const Text('Confirm' , style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),

              color: kSecondaryColor,
              function: () {
                navigateAndRemove(context, const Complete());
              })
        ],
      ),
    );
  }
}
