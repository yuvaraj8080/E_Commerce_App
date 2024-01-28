import 'package:ecommerceapp/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(child:Column(
        children:[
          Row(children:[

            ///  First Name TextField
            Expanded(
                child: TextFormField(expands: false,
                    decoration:const InputDecoration(labelText:"First Name",prefixIcon:Icon(Iconsax.user))
                )),
            const SizedBox(width:16),

            /// Last Name TextField
            Expanded(
                child: TextFormField(expands: false,
                    decoration:const InputDecoration(labelText:"Last Name",prefixIcon:Icon(Iconsax.user))
                )),
          ]),
          const SizedBox(height:15),

          ///    Username TextField
          TextFormField(expands:false,
              decoration: const InputDecoration(labelText:"Username",prefixIcon:Icon(Iconsax.user_edit))
          ),
          const SizedBox(height:15),

          ///  E_Mail TextField
          TextFormField(expands:false,
              decoration: const InputDecoration(labelText:"E-Mail",prefixIcon:Icon(Iconsax.direct))
          ),
          const SizedBox(height:15),

          ///  Phone Number TextField
          TextFormField(expands:false,
              decoration: const InputDecoration(labelText:"Phone Number",prefixIcon:Icon(Iconsax.call))
          ),
          const SizedBox(height:15),

          ///  password  TextField
          TextFormField(expands:false,
              decoration: const InputDecoration(
                  labelText:"Password",
                  prefixIcon:Icon(Iconsax.password_check),
                  suffixIcon:Icon(Iconsax.eye_slash)
              )
          ),


          ///  Term Condition Checkbox
          Row(children:[
            SizedBox(width:24,child:Checkbox(value:true,onChanged: (value){})),
            Text(" I agree to",style:Theme.of(context).textTheme.bodySmall),
            Text(" Privacy Policy",style:Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? TColors.primaryColor :Colors.blueAccent)),
            Text(" and",style:Theme.of(context).textTheme.bodySmall),
            Text(" Term of use",style:Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark? TColors.primaryColor :Colors.blueAccent)),
          ]),
          const SizedBox(height:10),

          ///Sign Up Button / Create Account button
          SizedBox(width:double.infinity,child:ElevatedButton(onPressed:(){Get.to(const VerifyEmailScreen());},child:const Text("Create Account")))
        ]
    ));
  }
}
