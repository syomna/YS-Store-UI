import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shoptemplate/UI/modules/auth/forgot_password/verify.dart';
import 'package:shoptemplate/UI/styles/styles.dart';
import 'package:shoptemplate/UI/widgets/buttons/default_button.dart';
import 'package:shoptemplate/UI/widgets/components/components.dart';
import 'package:shoptemplate/UI/widgets/auth/text_field/default_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  height: 40,
                ),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 24.sp,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 40,
                ),
               const DefaultTextField(
                  hint: 'email address',
                  icon: Ionicons.mail_sharp,
                ),
                const SizedBox(
                  height: 40,
                ),
                DefaultButton(
                  widget: const  Text(
                    'Submit',
                    style: TextStyle(
                          color: Colors.white,
                        ),
                  ),
                  color: kDefaultColor,
                  function: () {
                    navigateTo(context, const Verify());
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
