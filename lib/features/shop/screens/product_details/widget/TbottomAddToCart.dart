import 'package:ecommerceapp/utils/halpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
class TBottomAndToCart extends StatelessWidget {
  const TBottomAndToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Container(
      padding:EdgeInsets.all(24),
      decoration:BoxDecoration(
        color: dark ? TColors.darkGrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Iconsax.add,size:40,color:TColors.darkGrey),
              const SizedBox(width:8),
              Text("2",style:Theme.of(context).textTheme.titleSmall),
              const SizedBox(width:10),
              const Icon(Iconsax.add,size:40,color:TColors.darkGrey),
            ],
          ),
          ElevatedButton(onPressed: (){}, child:Text("Add to Cart")),
        ],
      ),
    );
  }
}
