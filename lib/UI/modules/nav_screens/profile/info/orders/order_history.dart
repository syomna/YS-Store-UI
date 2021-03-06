import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoptemplate/UI/modules/nav_screens/home/details/product_details.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () => navigateTo(
                        context, ProductDetails(productModel: cartProducts[0])),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.sp,
                          child: Row(
                            children: [
                              Image(
                                  image:
                                      NetworkImage(cartProducts[0].images.first)),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${cartProducts[0].title} x2',
                                style: const TextStyle(
                                  fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _orderInfo('Price', '\$200'),
                            _orderInfo('Payment', 'Cash'),
                            _orderInfo('Status', 'Delivered'),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _orderInfo(String title, String subtitle) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(subtitle)
      ],
    );
  }
}
