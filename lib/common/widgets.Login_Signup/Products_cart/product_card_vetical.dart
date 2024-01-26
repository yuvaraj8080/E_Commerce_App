import 'package:ecommerceapp/common/widgets.Login_Signup/Products_cart/product_price_text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/halpers/helper_function.dart';
import '../images/t_Rounded_image.dart';
import '../texts/product_title_text.dart';

import '../../../common/shadow.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Card(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 260,
          width: 180,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            boxShadow: [TShadowStyle.VerticalProductShadow],
            borderRadius: BorderRadius.circular(16),
            color: dark ? TColors.dark : TColors.light,
          ),
          child: Column(
            children: [
              Container(
                height: 180,
                padding: const EdgeInsets.all(8),
                child: Stack(
                  children: [
                    const TRoundedImage(
                      imageUlr: "assets/images/products/product2.png",
                      applyImageRadius: true,
                    ),
                    Positioned(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade400,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        child: Text(
                          "25%",
                          style: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.black),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Iconsax.heart),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                      title: "Adidas New sale",
                      smallSize: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Adidas",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        const SizedBox(width: 5),
                        const Icon(Iconsax.verify, color: TColors.primaryColor, size: 20),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TProductPriceText(price: '35',),
                        Container(
                          decoration: const BoxDecoration(
                            color:Colors.blue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                          child: const SizedBox(
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Icon(Iconsax.add, color: TColors.white, size: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

