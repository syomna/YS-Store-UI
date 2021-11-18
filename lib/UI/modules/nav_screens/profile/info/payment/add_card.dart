import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/profile/edit_profile_field.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Cards',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const EditProfileField(
              hint: 'Cardholder\'s Name',
            ),
            const SizedBox(
              height: 10,
            ),
            const EditProfileField(
              hint: 'Card Number',
              maxLength: 16,
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const[
                  Expanded(
                      flex: 1,
                      child: Text(
                        'Expire date',
                      )),
                 Expanded(flex: 2, child: EditProfileField())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 const Expanded(
                      flex: 1,
                      child: Text(
                        'Security Code',
                      )),
                  Expanded(
                      flex: 2,
                      child: PinCodeTextField(
                          obscureText: true,
                          appContext: context,
                          length: 4,
                          onChanged: (value) {}))
                ],
              ),
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
