import 'package:flutter/material.dart';

class EditProfileField extends StatelessWidget {
  const EditProfileField(
      {Key? key,
     this.controller,
      this.hint,
      this.maxLength,
      this.keyboardType})
      : super(key: key);

  final String? hint;
  final int? maxLength;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.all(4),
      ),
      controller: controller,
    );
  }
}
