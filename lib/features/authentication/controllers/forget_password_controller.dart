import 'package:ecommerceapp/common/NetworkManager/network_manager.dart';
import 'package:ecommerceapp/data/repositories/authentication/authentication-repository.dart';
import 'package:ecommerceapp/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerceapp/utils/popups/full_screen_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../common/widgets.Login_Signup/loaders/snackbar_loader.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  /// VARIABLES
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();


  ///SEND RESET PASSWORD EMAIL
 sendPasswordResetEmail() async{
   try{
     // START LOADING
     TFullScreenLoader.openLoadingDialog("Processing your request...","assets/images/animations/emailVerificatation1.png");

     // CHECK INTERNET CONNECTIVITY
     final isConnected = await NetworkManager.instance.isConnected();
     if(!isConnected){
       TFullScreenLoader.stopLoading();
       return;
     }

     // FORM VALIDATION
     if(!forgetPasswordFormKey.currentState!.validate()){
       TFullScreenLoader.stopLoading();
       return;
     }

     // SEND EMAIL TO RESET PASSWORD
     await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());


     //  REMOVE LOADER
     TFullScreenLoader.stopLoading();

     // SHOW SUCCESS SCREEN
     TLoaders.successSnackBar(title:"Email",message:"Email Link Sent to reset your Password".tr);

     // REDIRECT
     Get.to(()=> ResetPasswordScreen(email:email.text.trim()));

   }
   catch(e){
     TFullScreenLoader.stopLoading();
     TLoaders.errorSnackBar(title:"Oh Snap",message:e.toString());
   }
 }

 resendPasswordResetEmail(String email) async{
   try{
     // START LOADING
     TFullScreenLoader.openLoadingDialog("Processing your request...","assets/images/animations/emailVerificatation1.png");

     // CHECK INTERNET CONNECTIVITY
     final isConnected = await NetworkManager.instance.isConnected();
     if(!isConnected){
       TFullScreenLoader.stopLoading();
       return;
     }

     // SEND EMAIL TO RESET PASSWORD
     await AuthenticationRepository.instance.sendPasswordResetEmail(email);


     //  REMOVE LOADER
     TFullScreenLoader.stopLoading();

     // SHOW SUCCESS SCREEN
     TLoaders.successSnackBar(title:"Email",message:"Email Link Sent to reset your Password".tr);



   }
   catch(e){
     TFullScreenLoader.stopLoading();
     TLoaders.errorSnackBar(title:"Oh Snap",message:e.toString());
   }
 }

}