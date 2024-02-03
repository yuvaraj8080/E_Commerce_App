import 'package:ecommerceapp/features/authentication/screens/Login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  ///---VARIABELS----
  final deviceStorage = GetStorage();

  /// CALLED FROM MAIN DART ON APP LAUNCH
   @override
  void onReady(){
     FlutterNativeSplash.remove();
     screenRedirect();
   }

   ///----FUNCTION TO SHOW RELEVANT SCREEN
  screenRedirect() async {
     ///---LOCAL STORAGE---
    if(kDebugMode){
      print("=============GET STORAGE AUTH REPO===============");
      print(deviceStorage.read("IsFirstTime"));
    }
    deviceStorage.writeIfNull("IsFirstTime",true);
    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(()=> const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  ///-------------EMAIL & PASSWORD SIGN-IN--------------------

  ///[EMAIL AUTHENTICATION ] - SIGN IN



  ///[EMAIL AUTHENTICATION ] - REGISTER

}