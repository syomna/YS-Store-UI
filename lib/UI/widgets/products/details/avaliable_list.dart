import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class AvaliableList extends StatelessWidget {
  const AvaliableList(
      {Key? key, required this.text, required this.list, this.isSize = false})
      : super(key: key);

  final String text;
  final List list;
  final bool isSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$text :', style: const TextStyle(color: Colors.grey)),
        SizedBox(
          height: 30,
          child: Row(
            children: list.map((e) {
              if (isSize) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      e,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }
              return CircleAvatar(
                backgroundColor: Color(e),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
