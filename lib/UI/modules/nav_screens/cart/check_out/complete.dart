import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/layout/layout.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';

class Complete extends StatelessWidget {
  const Complete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Ionicons.checkmark_circle,
              color: kDefaultColor,
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your Purchasing is Completed !',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            DefaultButton(
                widget: const Text(
                  'Continue Browsing',
                  style: TextStyle(color: Colors.white),
                ),
                color: kSecondaryColor,
                function: () {
                  navigateAndRemove(context, const Layout());
                })
          ],
        ),
      ),
    );
  }
}
