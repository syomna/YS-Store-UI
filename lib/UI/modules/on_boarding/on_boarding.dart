import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/layout/layout.dart';
import 'package:shoptemplate/UI/modules/auth/login/login.dart';
import 'package:shoptemplate/UI/modules/auth/register/register.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/smooth_page_indicator/build_smooth_page_indicator.dart';
import 'package:shoptemplate/core/data/dummy_data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: pageController,
              itemCount: onBoarding.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image(
                        height: 300.sp,
                        errorBuilder: (context, child, stack) =>
                            const Icon(Icons.broken_image),
                        image: AssetImage(onBoarding[index]['image'])),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      onBoarding[index]['title'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.sp),
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      onBoarding[index]['subtitle'],
                      style: TextStyle(fontSize: 16.sp , color: Colors.grey.shade700),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }),
        ),
        buttons(context)
      ],
    ));
  }

  Widget buttons(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: BuildSmoothPageIndicator(
                pageController: pageController,
                list: onBoarding,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    widget: const Text('Register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    function: () {
                      navigateTo(context, const Register());
                    },
                    color: kDefaultColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: DefaultButton(
                  widget: const Text('Log in',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  function: () {
                    navigateTo(context, const Login());
                  },
                  color: Colors.white,
                ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.logo_facebook,
                    color: kFacebookLogoColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Sign with Facebook',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              function: () {
                navigateAndRemove(context, const Layout());
              },
              color: Colors.white,
              hasBorder: true,
              borderColor: kFacebookLogoColor,
            )
          ],
        ));
  }
}
