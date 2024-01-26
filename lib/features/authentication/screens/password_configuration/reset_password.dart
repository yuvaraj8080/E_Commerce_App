import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Login/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
            automaticallyImplyLeading: false,
            actions:[
              IconButton(onPressed: ()=>Get.offAll(()=> const LoginScreen()), icon:const Icon(CupertinoIcons.clear)),
            ]),
        body: SingleChildScrollView(
          child:Padding(padding: EdgeInsets.only(top:100,right:32,left:32,bottom: 32),
              child:Column(
                  children:[

                    /// Asset Image  hare
                    Image(image: AssetImage("assets/images/animations/emailVerificatation1.png")),
                    SizedBox(height:50),

                    /// title ans subtitle
                    Text("Password Reset Email Sent",style:Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height:20),
                    Text("Your Account Security is Our Priority! We've Sent you a Secure link to safety change Your Password and Keep your Account Protected.",
                      style:Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(height:50),


                    /// Calling the Successfully Verification Screen and Arguments
                    SizedBox(width:double.infinity,child: ElevatedButton(
                        onPressed:()=> Get.offAll(()=> LoginScreen()),child:Text("Done"),
                        )),


                        ///  Buttons and TextButtons
                    SizedBox(height:20),
                    SizedBox(width:double.infinity,child: TextButton(onPressed:(){}, child:Text("Resend Email")))
                  ])
          ),
        )
    );
  }
}
