import 'package:flutter/material.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class AuthLine extends StatelessWidget {
   final String sentence;
   final String tappedText;
   final Function() function;

 const AuthLine({
   Key? key,
    required this.sentence, 
    required this.tappedText,
    required this.function
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sentence,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 4,
        ),
        InkWell(
          onTap: function,
          child: Text(
            tappedText,
            style: const TextStyle(color: kDefaultColor , fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
