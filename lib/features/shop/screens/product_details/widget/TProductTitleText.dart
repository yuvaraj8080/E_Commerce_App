import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_price_text.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/custom_shapes/container/TRoundedContainer.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/product_title_text.dart';
import 'package:ecommerceapp/common/widgets.Login_Signup/texts/section_heading.dart';
import 'package:ecommerceapp/utils/halpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets.Login_Signup/Choice/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Column(
      children:[
        ///-----SELECTED ATTRIBUTE PRINCING & DESTINATION
        TRoundedContainer(radius:0,padding:EdgeInsets.all(8),
        backgroundColor:dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children:[
              ///------TITLE PRICE AND STACK STATUS------
              Row(
                children:[
                  TSectionHeading(title:text,showActionButton:false),
                  SizedBox(width:30),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TSectionHeading(title: "Price :",showActionButton: false),

                          ///---ACTUAL PRICE
                          Text("\$25",style:Theme.of(context).textTheme.titleSmall!.apply(decoration:TextDecoration.lineThrough),
                          ),
                          SizedBox(width:8),

                          ///------SALE PRICE------
                          TProductPriceText(price:"20"),
                        ],
                      ),
                      Row(
                          children:[
                            TProductPriceText(price:"Stock"),
                            Text("In Stock",style:Theme.of(context).textTheme.titleMedium),

                          ]
                      )

                    ],
                  ),
                ]
              ),

              ///  VARIATION DESCRIPTION
              TProductTitleText(title:"This is the Description of the product of the Product and it can up to max 4 lines",
              maxLine: 4,
              )

            ]
          )
        ),
      ]
    );
  }
}

