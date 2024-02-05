import 'package:ecommerceapp/features/authentication/screens/Login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../exception_handling/handle_exception_file.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  ///---VARIABLES----
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;



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
  Future<UserCredential>registerWithEmailAndPassword(String email,String password)async{
     try{
       return await _auth.createUserWithEmailAndPassword(email:email, password:password);
     }
     on FirebaseAuthException catch (e){
       throw TFirebaseAuthException(e.code).message;
     }
     on FirebaseException catch (e){
       throw TFirebaseException(e.code).message;
     }
     on FormatException catch (_){
       throw TFormException().message;
     }
     on PlatformException catch (e){
       throw TPlatformException(e.code).message;
     }
     catch(e){
       throw "Something went wrong, Please try again";
     }
  }

}
