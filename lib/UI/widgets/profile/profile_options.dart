import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({Key? key, required this.text, required this.icon , required this.function})
      : super(key: key);

  final String text;
  final IconData icon;
  final Function()? function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: function,
      leading: Icon(
        icon,
        color: kDefaultColor,
        size: 20,
      ),
      title: Text(
        text,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: kDefaultColor,
        size: 20,
      ),
    );
  }
}
