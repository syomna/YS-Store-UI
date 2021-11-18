import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/layout/layout.dart';
import 'package:shoptemplate/UI/modules/auth/forgot_password/forgot_password.dart';
import 'package:shoptemplate/UI/modules/auth/register/register.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/auth/auth_line.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/auth/text_field/default_text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
               const DefaultTextField(
                  hint: 'email address',
                  icon: Ionicons.mail_sharp,
                ),
              const  DefaultTextField(
                  hint: 'password',
                  icon: Ionicons.lock_closed,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      navigateTo(context, const ForgotPassword());
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: kDefaultColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                DefaultButton(
                  widget: const Text(
                    'Log in',
                    style: TextStyle(
                          color: Colors.white,
                        ),
                  ),
                  color: kDefaultColor,
                  function: () {
                    navigateAndRemove(context, const Layout());
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                AuthLine(
                  sentence: 'Don\'t have an account?',
                  tappedText: 'Register',
                  function: () {
                    navigateTo(context, const Register());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
