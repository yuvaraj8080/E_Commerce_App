import 'package:ecommerceapp/common/widgets.Login_Signup/custom_shapes/container/TRoundedContainer.dart';
import 'package:ecommerceapp/utils/halpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return TRoundedContainer(radius:15,width:double.infinity,
    showBorder:true,
      backgroundColor:selectedAddress ? TColors.primaryColor.withOpacity(0.5) : Colors.transparent,
      borderColor:selectedAddress
        ? Colors.transparent
          :dark
        ? TColors.darkGrey
          : TColors.grey,
        margin:EdgeInsets.only(bottom:10),
      child: Stack(
        children:[
          Positioned(
            right: 5, top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle : null,
              color: selectedAddress
                ?dark
                  ?TColors.light
                  :TColors.dark
                  :null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
                Text("Yuvaraj Dekhane",
                maxLines:2,
                  overflow:TextOverflow.ellipsis,
                  style:Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height:4),
                const Text("+91 8080737803",maxLines:1, overflow:TextOverflow.ellipsis),
                const Text("Boys goverment hostel bdd chwal worli  mumbai 400018",maxLines:1, overflow:TextOverflow.ellipsis),
                SizedBox(height:8),
              ]
            ),
          )
        ]
      )
    );
  }
}
