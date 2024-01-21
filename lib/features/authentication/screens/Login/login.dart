import 'package:ecommerceapp/features/authentication/screens/Login/widgets/login_form.dart';
import 'package:ecommerceapp/features/authentication/screens/Login/widgets/login_header.dart';
import 'package:ecommerceapp/utils/halpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/form_divider.dart';
import '../../../../common/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 56, left: 20, right: 20, bottom: 20),
        child: Column(children: [
          ///  Logo title And Subtitle,
          TLoginHeader(dark: dark),

          /// Form TextField
          const TLoginForm(),

          ///    Divider
          TFormDivider(dark: dark),

          SizedBox(height: 16,),
          ///  Footer Social Buttons
          const TSocialButtons()
        ]),
      ),
    ));
  }
}




