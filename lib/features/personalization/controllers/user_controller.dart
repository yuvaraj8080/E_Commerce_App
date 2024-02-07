import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../../common/widgets.Login_Signup/loaders/snackbar_loader.dart';
import '../../../utils/User_Model/user_model.dart';

class UserController extends GetxController{
  static UserController get instance => Get.find();

  get userRepository => null;

  /// SAVE USER RECORD FROM ANY REGISTRATION PROVIDER

Future<void> saveUserRecord(UserCredential? userCredential) async{
  try{
    if(userCredential != null){
      //CONVERT NAME TO FIRST AND LAST NAME
      final nameParts = UserModel.nameParts(userCredential.user!.displayName ?? '');
      final username = UserModel.generateUsername(userCredential.user!.displayName ?? '');

      // map data
      final user = UserModel(
          id:userCredential.user!.uid,
          firstName:nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join("") : '',
          username: username,
          email:userCredential.user!.email ?? '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture:userCredential.user!.photoURL??''
      );

      // SAVE USER DATA
      await userRepository.saveUserRecord(user);

    }
  }
  catch(e){
    TLoaders.warningSnackBar(title: "Date not saved",
    message:"Something went wrong while saving your information, you can re-save your data in your profile.");
   }
  }
}