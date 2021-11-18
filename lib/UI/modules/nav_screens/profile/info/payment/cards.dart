import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/payment/add_card.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/profile/info_card.dart';

class Payment extends StatelessWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payments'),
      actions: [
          IconButton(
              onPressed: () {
                navigateTo(context, const AddCard());
              },
              icon: const Icon(Ionicons.add))
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  const [
            InforCard(title: 'Yomna Salah', subtitle: 'x0000', icon: Ionicons.card_outline)
          
          ],
        ),
      ),
      
    );
  }
}