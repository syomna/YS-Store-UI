import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kDefaultColor = Color(0xFF7935FF);
const kSecondaryColor = Color(0xFF039580);
const kFacebookLogoColor = Color(0xFF0B84ED);

ThemeData kAppTheme = ThemeData(
  
    scaffoldBackgroundColor:  Colors.white,
    appBarTheme:
        const AppBarTheme(backgroundColor: Colors.white, elevation: 0.0 , systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: kDefaultColor,
          systemNavigationBarColor: kDefaultColor)),
    primarySwatch: Colors.amber,
  
  );
