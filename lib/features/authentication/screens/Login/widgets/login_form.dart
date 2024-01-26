import 'package:ecommerceapp/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ecommerceapp/features/authentication/screens/signup.widgets/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';
class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            ///  Email TextField Hare
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: "Enter E-Mail"),
            ),
            const SizedBox(height: 16),

            ///  Password TextField Hare
            TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: "Enter Password",
                  suffixIcon: Icon(Iconsax.eye_slash),
                )),
            const SizedBox(height: 10),

            ///Remember me & Forget Password
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              /// Remember  ME Text
              Row(children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text("Remember Me"),
              ]),

              ///  Forget Password
              TextButton(
                  onPressed: ()=> Get.to(()=>ForgetPassword()), child: const Text("Forget Password")),
            ]),
            const SizedBox(height: 16),

            ///   Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: ()=>Get.off(()=>NavigationMenu()), child: const Text("Sign Up"))),

            const SizedBox(height: 16),

            ///  Create Account Button
            SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                    onPressed: () {
                      Get.to(const SignupScreen());
                    },
                    child: const Text("Create New Account"))),
          ]),
        ));
  }
}
