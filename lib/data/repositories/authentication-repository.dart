import 'package:ecommerceapp/features/authentication/screens/Login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:ecommerceapp/features/authentication/screens/signup.widgets/verify_email.dart';
import 'package:ecommerceapp/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
     //REMOVE THE NATIVE SPLASH SCREEN
     FlutterNativeSplash.remove();
     //REDIRECT TO THE APPROPRITE SCREEN
     screenRedirect();
   }

   ///----FUNCTION TO SHOW RELEVANT SCREEN
  screenRedirect() async {
    final user = _auth.currentUser;
     //LOCAL STORAGE
     if(user != null){
       if(user.emailVerified){
         Get.offAll(()=> const NavigationMenu());
       }
       else{
         Get.offAll(()=> VerifyEmailScreen(email: _auth.currentUser?.email,));
       }
     }
     else{
       ///---LOCAL STORAGE---
       deviceStorage.writeIfNull("IsFirstTime",true);

       /// CHECK IF IT'S THE FIRST TIME LAUNCHING THE APP
       deviceStorage.read("IsFirstTime") != true
           ? Get.offAll(()=> const LoginScreen())
           : Get.offAll(const OnBoardingScreen());
     }
  }

  ///-------------EMAIL & PASSWORD SIGN-IN--------------------

  /// [EMAIL AUTHENTICATION ] - LOGIN
   Future<UserCredential> loginWithEmailAndPassword(String email, String password)async{
     try{
       return await _auth.signInWithEmailAndPassword(email: email, password: password);
     }
     on FirebaseAuthException catch (e){
       throw TFirebaseAuthException(e.code).message;
     }
     on FirebaseException catch (e){
       throw TFirebaseException(e.code).message;
     }
     on FormatException catch (_){
       throw TFormException();
     }
     on PlatformException catch (e){
       throw TPlatformException(e.code).message;
     }
     catch(e){
       throw "Something went wrong, Please try again";
     }
   }


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
       throw TFormException();
     }
     on PlatformException catch (e){
       throw TPlatformException(e.code).message;
     }
     catch(e){
       throw "Something went wrong, Please try again";
     }
  }

  /// [EMAIL VERIFICATION] - MAIL VERIFICATION
  Future<void> sendEmailVerification() async {
     try{
       await _auth.currentUser?.sendEmailVerification();
     }
     on FirebaseAuthException catch (e){
       throw TFirebaseAuthException(e.code).message;
     }
     on FirebaseException catch (e){
       throw TFirebaseException(e.code).message;
     }
     on FormatException catch (_){
       throw TFormException();
     }
     on PlatformException catch (e){
       throw TPlatformException(e.code).message;
     }
     catch(e){
       throw "Something went wrong, Please try again";
     }
  }


  ///[ REAUTHENTICATE] - REAUTHENTICATE USER


  ///[Logout]- VALID FOR ANY AUTHENTICATION.

  Future <void> logout() async {
     try{
       await FirebaseAuth.instance.signOut();
       Get.offAll(()=> const LoginScreen());
     }
       on FirebaseAuthException catch (e){
       throw TFirebaseAuthException(e.code).message;
     }
     on FirebaseException catch (e){
       throw TFirebaseException(e.code).message;
     }
     on FormatException catch (_){
       throw TFormException();
     }
     on PlatformException catch (e){
       throw TPlatformException(e.code).message;
     }
     catch(e){
       throw "Something went wrong, Please try again";
     }
  }
}
