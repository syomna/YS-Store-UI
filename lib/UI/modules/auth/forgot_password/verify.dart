import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
               const  Text(
                  'Verification',
                style: TextStyle(
                    fontSize: 24,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),),
                const SizedBox(
                  height: 40,
                ),
                PinCodeTextField(
                    appContext: context,
                    length: 4,
                    pinTheme: PinTheme(
                        selectedColor: Colors.green.withOpacity(0.6),
                        activeColor: Colors.green.withOpacity(0.6),
                        inactiveColor: Colors.red.withOpacity(0.6)),
                    onChanged: (value) {}),
                const SizedBox(
                  height: 40,
                ),
                DefaultButton(
                    widget: const Text(
                      'Verify',
                      style: TextStyle(
                            color: Colors.white,
                          ),
                    ),
                    color: kDefaultColor,
                    function: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
