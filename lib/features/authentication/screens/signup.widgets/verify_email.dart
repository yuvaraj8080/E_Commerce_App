
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets.Login_Signup/success_Screee/sucess_screen.dart';
import '../Login/login.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
            Text("Verify your email address!",style:Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height:20),
            Text("Congratulations! your Account Awaits: Verify Your Email to Start Shopping and Experience a world of Unrivaled Deals ans Personalized Offers",
            style:Theme.of(context).textTheme.labelMedium,
            ),
                SizedBox(height:50),


          /// Calling the Successfully Verification Screen and Arguments
           SizedBox(width:double.infinity,child: ElevatedButton(
               onPressed:()=>Get.to(()=> const SuccessScreen(
                 image:"assets/images/animations/emailVerificatation1.png",
                 title:"Congratulation! Your account successfully Created!",
                 subtitle: "Welcome to Your Ultimates Shopping Destinations: Your Account Created, Unleash the joy of Seamless Online Shopping!",
               )),


               ///  Buttons and TextButtons
               child:SizedBox(width: double.infinity,
                   child: Center(child: Text("Continue"))))),
           SizedBox(height:20),
           SizedBox(width:double.infinity,child: TextButton(onPressed:(){}, child:Text("Resend Email")))

              ])
        ),
      )
    );
  }
}
