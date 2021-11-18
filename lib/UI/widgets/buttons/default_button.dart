import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
 final Widget widget;
 final bool hasBorder;
 final Color color;
 final Color? borderColor;
 final Function() function;

  const DefaultButton(
      {
        Key? key,
        required this.widget,
      this.hasBorder = false,
      this.borderColor,
      required this.color,
      required this.function}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: function,
      minWidth: double.infinity,
      elevation: 2,
      color: color,
      height: 50,
      child: widget,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: hasBorder ? BorderSide(color: borderColor!) : BorderSide.none),
    );
  }
}
