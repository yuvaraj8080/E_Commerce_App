import 'package:ecommerceapp/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets.Login_Signup/Products_cart/cart/cart_menu_icon.dart';
import '../../../../../common/widgets.Login_Signup/appBar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/shimmer_circular_Indicator/shimmer.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return TAppBar(
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Good Day for Shopping",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const TShimmerEffect(width: 80, height: 15);
              } else {
                return Text(controller.user.value.fullName,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: TColors.grey));
              }
            },
          ),
        ]),
        actions: [
          TCardCounterIcon(
            onPressed: () {},
            iconColor: TColors.light,
          )
        ]);
  }
}
