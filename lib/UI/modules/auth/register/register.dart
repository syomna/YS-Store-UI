import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/layout/layout.dart';
import 'package:shoptemplate/UI/modules/auth/login/login.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/auth/auth_line.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/auth/text_field/default_text_field.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
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
                  'Let\'s get started!',
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
                  hint: 'username',
                  icon: Ionicons.person,
                ),
               const DefaultTextField(
                  hint: 'email address',
                  icon: Ionicons.mail_sharp,
                ),
               const DefaultTextField(
                  hint: 'password',
                  icon: Ionicons.lock_closed,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                DefaultButton(
                  widget:const Text(
                    'create account',
                    style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
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
                  sentence: 'Already have an account?',
                  tappedText: 'Log in',
                  function: () {
                    navigateAndRemove(context, const Login());
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
