import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({Key? key, this.isBackgroundWhite = false}) : super(key: key);

  final bool isBackgroundWhite;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isBackgroundWhite
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        Text.rich(TextSpan(children: [
          const TextSpan(text: 'YS ', style: TextStyle(color: kSecondaryColor)),
          TextSpan(
              text: 'Store',
              style: TextStyle(
                  color: isBackgroundWhite ? kDefaultColor : Colors.white))
        ])),
        const SizedBox(
          width: 4,
        ),
        Icon(
          Ionicons.bag,
          color: isBackgroundWhite ? kSecondaryColor : Colors.white,
        )
      ],
    );
  }
}
