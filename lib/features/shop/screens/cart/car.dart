import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_price_text.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets.Login_Signup/Products_cart/cart/add_remove_button.dart';
import '../../../../common/widgets.Login_Signup/Products_cart/cart/cart_item.dart';
import '../../../../common/widgets.Login_Signup/appBar/appbar.dart';
import '../../../../utils/halpers/helper_function.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
      appBar:TAppBar(showBackArrow:true,
          title:Text("Cart",style:Theme.of(context).textTheme.headlineSmall)),
      body:Padding(
        padding:EdgeInsets.all(16),
        child:ListView.separated(
          shrinkWrap: true,
            separatorBuilder:(_,__)=>  SizedBox(height:20),
            itemCount:10,
          itemBuilder:(_,index) =>  Column(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children:[
              TCartItem(dark: dark),
              const SizedBox(height:8),
              const Row(
                children: [
                  ///-----EXTRA SPACE-----
                  SizedBox(height:8),
                  ///----ADD REMOVE BUTTONS----
                  Expanded(flex:6,child: TProductQuantityWithAddRemoveButton()),
                  Expanded(child: TProductPriceText(price:"150"))
                ],
              ),
            ]
          )
        )
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(onPressed:(){},child:Text("Checkout \$256",style:Theme.of(context).textTheme.bodySmall)),
      ),
    );
  }
}


