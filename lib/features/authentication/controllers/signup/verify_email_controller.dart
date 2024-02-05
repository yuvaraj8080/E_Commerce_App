import 'dart:async';

import 'package:ecommerceapp/common/widgets.Login_Signup/success_Screee/sucess_screen.dart';
import 'package:ecommerceapp/data/repositories/authentication-repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets.Login_Signup/loaders/snackbar_loader.dart';


class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();


  ///SEND EMAIL WHENEVER VERIFY SCREEN APPEARS & GET TIMER FOR AUTO REDIRECT

@override
  void onInit(){
  sendEmailVerification();
  setTimerForAutoRedirect();
  super.onInit();
}

/// SEND EMAIL VERIFICATION LINK

sendEmailVerification() async {
  try{
    await AuthenticationRepository.instance.sendEmailVerification();
    TLoaders.successSnackBar(title:"Email Sent",message:"Please Check Your inbox and Verify your emil.");
  }catch(e){
    TLoaders.errorSnackBar(title:'Oh Snap',message:e.toString());
  }
}

/// TIMER TO AUTOMATICALLY REDIRECT ON EMAIL VERIFICATION
  setTimerForAutoRedirect(){
  Timer.periodic(const Duration(seconds:1), (timer) async{
    await FirebaseAuth.instance.currentUser?.reload();
    final user = FirebaseAuth.instance.currentUser;
    if(user?.emailVerified ?? false){
      timer.cancel();
      Get.offAll(
              () =>  SuccessScreen(
                  image:"assets/images/animations/emailVerificatation1.png",
                  title:"Congratulation!",
                  subtitle:"Your Email Successfully Verified",
                onPressed:() =>AuthenticationRepository.instance.screenRedirect(),
              )
      );
    }
  });
  }

/// MANUALLY CHECK IF EMAIL VERIFIED
  /// MANUALLY CHECK IF EMAIL VERIFIED
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified){
      Get.off(
              () =>  SuccessScreen(
            image:"assets/images/animations/emailVerificatation1.png",
            title:"Congratulation!",
            subtitle:"Your Email Successfully Verified",
            onPressed:() =>AuthenticationRepository.instance.screenRedirect()
          )
      );
    }
  }
}