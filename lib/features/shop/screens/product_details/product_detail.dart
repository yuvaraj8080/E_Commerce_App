
import 'package:ecommerceapp/common/widgets.Login_Signup/Choice/choice_chip.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widget/TProductTitleText.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widget/TbottomAddToCart.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widget/product_detailimage_slider.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widget/product_mata_data.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widget/rating_shere_widget.dart';
import 'package:ecommerceapp/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import '../../../../utils/halpers/helper_function.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final dark = THelperFunction.isDarkMode(context);

    return   Scaffold(
      bottomNavigationBar:const TBottomAndToCart(),
      body:SingleChildScrollView(
        child: Column(
          children:[

            /// 1- PRODUCT IMAGE SLIDER
            TProductImageSlider(),


            /// product detail
            Padding(padding:EdgeInsets.all(16),
              child:Column(
                  children:[

                ///------RATING & SHARE BUTTON
                TRatingAndShare(),

                ///------PRICE,TITLE,STACK, & BRAND
                TProductMetaData(),


                    ///VARIATION DESCRIPTION
                    TProductAttributes(text: 'Variation'),

                    ///----ATTRIBUTES-----
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TSectionHeading(title:"Colors"),
                        Wrap(
                          spacing:10,
                            children:[
                          TChoiceChip(text: "Green", selected: true,),
                          TChoiceChip(text: "Blue", selected: false),
                          TChoiceChip(text: "Yellow", selected: false),
                        ])
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                      TSectionHeading(title:"Size",),
                      Wrap(spacing:10,
                        children: [
                        TChoiceChip(text: "Eu 34", selected:true),
                        TChoiceChip(text: "Eu 36", selected:false),
                        TChoiceChip(text: "Eu 38", selected:false),
                      ],)
                    ]),
                    SizedBox(height:8),
                    /// CHECKOUT BUTTON
                    SizedBox(width:double.infinity,child:ElevatedButton(onPressed:(){}, child:Text("Checkout"))),

                    ///-----DESCRIPTION-------
                    const TSectionHeading(title:"Description",showActionButton:false),
                    const SizedBox(height:8),
                     const ReadMoreText("This is a Product description for Blue NIke Sleave less vest . There are more things that can be added but i am more things that can be added but Nike is like favorite brand ad popular brand one of the like people",
                    trimLines: 2,
                      trimMode:TrimMode.Line,
                       trimCollapsedText:"Show more",
                       trimExpandedText:"less",
                       moreStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w800),
                       lessStyle:TextStyle(fontSize:14,fontWeight:FontWeight.w800),
                    ),

                    ///------Reviews------
                    const Divider(),
                    const SizedBox(height:8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TSectionHeading(title:"Reviews(199)",onPressed:(){},showActionButton:false,),
                        IconButton(onPressed:()=>Get.to(()=>const ProductReviewScreen()), icon:Icon(Iconsax.arrow_right_3,size:15)),

                      ],
                    ),
                    const SizedBox(height:8),

                  ])
            )
          ]
        )
      )
    );
  }
}


