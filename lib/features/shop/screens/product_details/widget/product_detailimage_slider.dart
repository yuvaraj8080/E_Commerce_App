import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets.Login_Signup/TCurvedEdgeWidget.dart';
import '../../../../../common/widgets.Login_Signup/appBar/appbar.dart';
import '../../../../../common/widgets.Login_Signup/images/t_Rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/halpers/helper_function.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TCurvedEdgesWidget(
        child:Container(
            color: dark ? TColors.darkGrey : TColors.light,
            child:  Stack(
                children:[
                  /// MAIN LARGE IMAGE
                  const SizedBox(height:350,
                    child:Padding(padding:EdgeInsets.all(16),
                        child:Center (child: Image(image:AssetImage("assets/images/products/NIkeShirt2.png")))
                    ),
                  ),

                  /// -----IMAGE SLIDER--------
                  Positioned(
                      right:0,bottom:25,left:15,
                      child:SizedBox(
                          height:80,
                          child:ListView.separated(
                            itemCount:6,physics:AlwaysScrollableScrollPhysics(),
                            shrinkWrap:true,
                            scrollDirection:Axis.horizontal,
                            separatorBuilder:(_,__) => SizedBox(width:20),

                            itemBuilder:(_,index)=> TRoundedImage(
                                width:80,
                                backgroundColor:dark? TColors.dark : TColors.white,
                                border:Border.all(color:TColors.primaryColor),
                                padding: const EdgeInsets.all(8),
                                imageUlr:"assets/images/products/NIkeShirt.png"),
                          )
                      )
                  ),
                  const TAppBar(showBackArrow:true,
                    actions:[
                      Icon(Iconsax.heart5,color:Colors.red),
                    ],
                  )
                ]
            )
        )
    );
  }
}
