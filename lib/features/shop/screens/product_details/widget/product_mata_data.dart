import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_price_text.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/custom_shapes/container/TRoundedContainer.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/product_title_text.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/t_brand_title_and_verify.dart';
import 'package:ecommerceapp/utils/constants/enums_dart.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/halpers/helper_function.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {

    final darkMode = THelperFunction.isDarkMode(context);

    return  Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children:[
        ///--------PRICE & SALE PRICE
        Row(
          children:[
            ///SALE TAG
            TRoundedContainer(radius:15,
            backgroundColor:Colors.yellow,
              padding:const EdgeInsets.symmetric(horizontal:8,vertical: 8),
              child: Text("25%",style:Theme.of(context).textTheme.labelLarge!.apply(color:TColors.black))
            ),

            ///PRICE
            Text("\$250",style:Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough)),
            const SizedBox(width:8),
            const TProductPriceText(price: " -175",isLarge:true,)
          ]
        ),
        const SizedBox(height:8),

        ///----TITLE------
        const TProductTitleText(title: "Black Nike Sports shirts"),
        const SizedBox(height:8),

        ///------STACK STATUS--------
        Row(children:[
          const TProductTitleText(title:"Status"),
          const SizedBox(width:8),
          Text("In Stack",style:Theme.of(context).textTheme.titleMedium),
        ]),
        const SizedBox(height:8),

        ///-------BRAND-------
        const Row(
          children: [
            TBrandTitleWithVerifiedIcon(title:"Nike",brandTextSize:TextSizes.medium),
            Icon(Icons.verified,),
          ],
        )
      ]
    );
  }
}
