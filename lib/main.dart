import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoptemplate/UI/modules/on_boarding/on_boarding.dart';
import 'package:shoptemplate/UI/styles/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: kAppTheme,
        title: 'YS Store',
        home: const OnBoardingScreen(),
      ),
    );
  }
}
