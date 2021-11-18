import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class InforCard extends StatelessWidget {
  const InforCard(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon})
      : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: kDefaultColor)),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style:
             const TextStyle(color: Colors.grey),
        ),
        leading: Icon(icon, size: 20, color: kDefaultColor),
      ),
    );
  }
}
