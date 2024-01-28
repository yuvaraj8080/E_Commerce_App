import 'package:ecommerceapp/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:Padding(padding: const EdgeInsets.only(top:150,right:32,left:32,bottom: 32),
      child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              /// title ans subtitle
              Text("Forget Password",style:Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height:20),


              Text("Don't worry sometime peoples can forget too, Enter your email and we will send you a password reset link.",style:Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height:50),

              /// TextForm field hare
              TextFormField(
                decoration:const InputDecoration(labelText:"E-Mail",prefixIcon:Icon(Iconsax.direct_right))
              ),


              const SizedBox(height:50),
              /// Submit button hare
              SizedBox(width:double.infinity,child: ElevatedButton(onPressed:()=> Get.off(()=> const ResetPassword()),child:const Text("Submit"))),


            ]),
      )
      ),

    );
  }
}
