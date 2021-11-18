import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

class DefaultTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isObscure;
  final bool isPassword;

  const DefaultTextField(
      {Key? key,
      required this.hint,
      required this.icon,
      this.isPassword = false,
      this.isObscure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          //contentPadding:  EdgeInsets.all(4),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Ionicons.eye_outline,
                    color: kDefaultColor,
                  ))
              : null,
          prefixIcon: Icon(
            icon,
            color: kDefaultColor,
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
