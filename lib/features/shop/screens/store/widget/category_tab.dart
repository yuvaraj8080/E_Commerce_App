import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_card_vetical.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/layout/grid_layout.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets.Login_Signup/brands/brand_show_case.dart';



class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(

      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
            padding: EdgeInsets.all(0),
            child: Column(children: [
              /// ----- BArands -----
              const TBranShowcase(images: [
                "assets/images/products/NIkeShirt.png",
                "assets/images/products/NIkeShirt2.png",
                "assets/images/products/NIkeShirt3.jpg"
              ]),
               const SizedBox(height:15),
              const TBranShowcase(images: [
                "assets/images/products/NIkeShirt.png",
                "assets/images/products/NIkeShirt2.png",
                "assets/images/products/NIkeShirt3.jpg"
              ]),

              /// ------Products -----
              TSectionHeading(title:"You might like",onPressed:(){}),
              const SizedBox(height:16),

              TGridLayout(itemCount:4, itemBuilder:(_,index)=> const TProductCardVertical()),
              const SizedBox(height:15)


            ])),
      ],
    );
  }
}

