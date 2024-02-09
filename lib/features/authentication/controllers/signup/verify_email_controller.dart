import 'dart:async';
import 'package:ecommerceapp/data/repositories/authentication-repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../../../../common/widgets.Login_Signup/success_Screee/sucess_screen.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  // Send email verification link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
    } catch (e) {
      print("Error sending email verification: $e");
    }
  }

  // Set timer for automatic redirection on email verification
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds:10), (timer) async {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser != null) {
        await currentUser.reload();
        if (currentUser.emailVerified) {
          timer.cancel();
          showSuccessScreen();
        }
      }
    });
  }

  // Manually check if email verified
  checkEmailVerificationStatus() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.emailVerified) {
      showSuccessScreen();
    }
  }

  // Show success screen after email verification
  void showSuccessScreen() {
    Get.offAll(() => SuccessScreen(
      image: "assets/images/animations/emailVerificatation1.png",
      title: "Congratulations!",
      subtitle: "Your Email Successfully Verified",
      onPressed: () => AuthenticationRepository.instance.screenRedirect(),
    ));
  }
}
