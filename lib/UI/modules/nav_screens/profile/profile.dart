import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/nav_screens/favorite/favorite.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/addresses/address.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/payment/cards.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/edit_profile.dart';
import 'package:shoptemplate/UI/modules/nav_screens/profile/info/orders/order_history.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/profile/profile_options.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: Center(
              child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage(profileImage)))),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(child: _editing(context))
        ],
      ),
    );
  }

  Widget _editing(BuildContext context) {
    return Column(
      children: [
        ProfileOptions(
          text: 'Edit Profile',
          icon: Ionicons.person,
          function: () {
            navigateTo(context, EditProfile());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileOptions(
          text: 'My Favorites',
          icon: Ionicons.heart,
          function: () {
            navigateTo(context, const Favorite());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileOptions(
          text: 'Shopping Address',
          icon: Ionicons.location,
          function: () {
            navigateTo(context, const Address());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileOptions(
          text: 'Payment',
          icon: Ionicons.card,
          function: () {
            navigateTo(context, const Payment());
          },
        ),
        const SizedBox(
          height: 8,
        ),
        ProfileOptions(
          text: 'Order History',
          icon: Ionicons.clipboard,
          function: () {
            navigateTo(context, const OrderHistory());
          },
        ),
      ],
    );
  }
}
