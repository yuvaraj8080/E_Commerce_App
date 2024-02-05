import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utils/constants/colors.dart';


class TLoaders {

  static warningSnackBar({required title,message = ""}){
    Get.snackbar(
      title,
      message,isDismissible: true,
      shouldIconPulse: true,
      colorText: TColors.white,
      backgroundColor:Colors.orange,
      snackPosition:SnackPosition.BOTTOM,
      duration: const Duration(seconds:3),
      margin:const EdgeInsets.all(20),
      icon: const Icon(Iconsax.warning_2,color:TColors.white),
    );
  }

  //SHOW ERROR MESSAGE ON SCREEN
  static errorSnackBar({required title,message = ""}){
    Get.snackbar(title,
    message,
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor:Colors.red.shade600,
      colorText:Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration:const Duration(seconds:3),
      margin:const EdgeInsets.all(20),
      icon:const Icon(Iconsax.warning_2,color:TColors.white),
    );
  }

  //SHOW SUCCESS MESSAGE ON SCREEN
  static successSnackBar({required title,message = ""}){
    Get.snackbar(title,
      message,
      isDismissible: true,
      shouldIconPulse: true,
      backgroundColor:Colors.green.shade600,
      colorText:Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      duration:const Duration(seconds:3),
      margin:const EdgeInsets.all(20),
      icon:const Icon(Icons.done,color:TColors.white),
    );
  }



}