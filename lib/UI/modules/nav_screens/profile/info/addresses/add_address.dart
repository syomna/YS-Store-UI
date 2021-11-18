import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/profile/edit_profile_field.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Address',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: DefaultButton(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Ionicons.location_outline,
                        size: 20,
                        color: Colors.white,
                      ),
                      Text(
                        'Pick My Location!',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  color: kDefaultColor,
                  function: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
            const EditProfileField(
              hint: 'City',
            ),
            const SizedBox(
              height: 10,
            ),
            const EditProfileField(
              hint: 'Apartment',
            ),
            const SizedBox(
              height: 10,
            ),
            const EditProfileField(
              hint: 'Block',
            ),
            const SizedBox(
              height: 10,
            ),
            const EditProfileField(
              hint: 'Street Name',
            ),
            const SizedBox(
              height: 10,
            ),
            const EditProfileField(
              keyboardType: TextInputType.number,
              hint: 'Zip-Code',
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(
                widget: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                color: kDefaultColor,
                function: () {})
          ],
        ),
      ),
    );
  }
}
