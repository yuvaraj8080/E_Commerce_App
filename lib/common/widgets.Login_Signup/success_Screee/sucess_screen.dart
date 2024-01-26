import 'package:ecommerceapp/features/authentication/screens/Login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle,});

  final String image, title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:Padding(padding: EdgeInsets.only(top:130,right:32,left:32,bottom: 32),
              child:Column(
                  children:[

                    ///  Asset Image hare
                    Image(image: AssetImage(image)),
                    SizedBox(height:50),

                    /// title ans subtitle
                    Text(title,style:Theme.of(context).textTheme.headlineMedium,),
                    SizedBox(height:20),


                    Text(subtitle,style:Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(height:50),


                    ///  Buttons and TextButtons
                    SizedBox(width:double.infinity,child: ElevatedButton(onPressed:()=>Get.to(()=> const LoginScreen()),child:Text("Continue"))),
                  ])
          ),
        )

      );
  }
}