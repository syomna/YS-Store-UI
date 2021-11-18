import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/addresses/add_address.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/profile/info_card.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Addresses',
        ),
        actions: [
          IconButton(
              onPressed: () {
                navigateTo(context, const AddAddress());
              },
              icon: const Icon(Ionicons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            InforCard(
              title: 'Cairo',
              subtitle: 'Apartment - Block - Street name',
              icon: Ionicons.location_outline,
            ),
            SizedBox(
              height: 10,
            ),
            InforCard(
              title: 'Giza',
              subtitle: 'Apartment - Block - Street name',
              icon: Ionicons.location_outline,
            ),
          ],
        ),
      ),
    );
  }
}
