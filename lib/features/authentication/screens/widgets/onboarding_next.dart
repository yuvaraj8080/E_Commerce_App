import 'package:ecommerceapp/features/authentication/controllers/onboardingcontroller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/halpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Positioned(
        right:25,
        bottom:kToolbarHeight,
        child:ElevatedButton(style: ElevatedButton.styleFrom(
            shape:CircleBorder(),shadowColor:Colors.white,elevation:2 ,
            backgroundColor: dark? TColors.primaryColor : Colors.black),
            onPressed:() => onBordingController.instance.nextPage(),
            child:Icon(Iconsax.arrow_right_3)));
  }
}
