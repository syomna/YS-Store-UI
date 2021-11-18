import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/profile/edit_profile_field.dart';

class CheckOutPayment extends StatelessWidget {
  const CheckOutPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Choose payment method :' , style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              DropdownButton(
                value: 'Cash',
                style: const TextStyle(
                  color: kSecondaryColor
                ),
                items: const [
                  DropdownMenuItem(
                    child: Text('Cash'),
                    value: 'Cash',
                  ),
                  DropdownMenuItem(
                    child: Text('PayPal'),
                    value: 'PayPal',
                  ),
                  DropdownMenuItem(
                    child: Text('Card'),
                    value: 'Card',
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Import cards :' , style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              DropdownButton(
                value: 'Card 1',
                style: const TextStyle(color: kSecondaryColor),
                items: const [
                  DropdownMenuItem(
                    child: Text('Card 1'),
                    value: 'Card 1',
                  ),
                  DropdownMenuItem(
                    child: Text('Card 2'),
                    value: 'Card 2',
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
          const Center(
            child: Text(
              'OR',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
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
              children: const [
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
        ],
      ),
    );
  }
}
