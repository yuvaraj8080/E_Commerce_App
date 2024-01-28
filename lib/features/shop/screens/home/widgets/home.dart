import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets.Login_Signup/Products_cart/product_card_vetical.dart';
import '../../../../../common/widgets.Login_Signup/custom_shapes/container/search_Container.dart.dart';
import '../../../../../common/widgets.Login_Signup/custom_shapes/curved_edges.dart/primary_header_controller.dart';
import '../../../../../common/widgets.Login_Signup/image_text_widget/vertical_image_text.dart';
import '../../../../../common/widgets.Login_Signup/layout/grid_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      /// Header of home Screen
      TPrimaryHeaderContainer(
          child: Column(children: [
        /// AppBar of Home Screen
        const THomeAppBar(),

        ///  SearchBar In the Home Screen
        const SizedBox(height: 30),
        const TSearchController(text: "Search in Store", icon: Iconsax.search_normal),

        const SizedBox(height: 20),

        ///  Categiries of home Sreeen
        THomeCategories(image: "", title: "  Shoes Catagoris", onTap: () {}),
      ])),

      ///  Home Rounded image
       Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              ///  Promo Slider -- Tutorial
              const TPromoSlider(banners: [
                  "assets/images/banners/homeBanner1.jpg",
                  "assets/images/banners/homeBanner2.png",
                  "assets/images/banners/homeBanner1.jpg"]
              ),
              const SizedBox(height:10),

              ///---  Heading
              TSectionHeading( title:"Popular Product",onPressed: (){}),

              ///  Popular Products -- Tutorial
              TGridLayout(itemBuilder: (BuildContext , int )=> const TProductCardVertical(), itemCount: 4,)
            ],
          ),
      ),
    ])));
  }
}




