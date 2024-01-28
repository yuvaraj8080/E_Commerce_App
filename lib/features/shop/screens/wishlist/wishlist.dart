import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_card_vetical.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/appBar/appbar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets.Login_Signup/layout/grid_layout.dart';

class FovouriteScreen extends StatelessWidget {
  const FovouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:TAppBar(
        title: Text("Wishlist",style: Theme.of(context).textTheme.headlineMedium),
        actions:[
          IconButton(onPressed:()=> Get.to(const HomeScreen()), icon:const Icon(Iconsax.add,size: 30))
        ]
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:Column(
            children:[
              TGridLayout(itemCount:6,itemBuilder:(_,index)=>const TProductCardVertical()),
            ]
          )
        )
      )
    );
  }

}
