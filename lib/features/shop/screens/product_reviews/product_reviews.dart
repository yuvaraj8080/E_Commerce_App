import 'package:ecommerceapp/common/widgets.Login_Signup/appBar/appbar.dart';
import 'package:ecommerceapp/features/shop/screens/product_reviews/widget/overall_product_rating.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets.Login_Signup/Products_cart/product_cards/user_reviewCard.dart';
import '../../../../common/widgets.Login_Signup/Products_cart/rating/rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
      ///-----APPBAR-----
      appBar: TAppBar(title:Text("Rating & Riviews"),
      showBackArrow:true,
      ),

      ///-----BODY-------
      body:SingleChildScrollView(
        child: Padding(padding:EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              Text("Rating and reviews are verified and are from people who use the same type of device that you use"),
              SizedBox(height:8),

              ///-----OVERALL PRODUCT RATING------
              TOverallProductRating(),
              SizedBox(height:8),
              TRatingBarIndicator(rating: 3.5),
              SizedBox(height:8),
              ///-----USER REVIEW LIST------
              UserReviewCard(),
              UserReviewCard(),
              UserReviewCard(),

        ])
        )
      )


    );
  }
}



