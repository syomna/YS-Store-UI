import 'package:flutter/material.dart';

navigateTo(context, widget) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));

navigateAndRemove(context, widget) =>
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => widget), (route) => false);


