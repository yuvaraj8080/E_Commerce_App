import 'package:flutter/material.dart';

import '../../../../../common/widgets.Login_Signup/Products_cart/cart/cart_menu_icon.dart';
import '../../../../../common/widgets.Login_Signup/appBar/appbar.dart';
import '../../../../../utils/constants/colors.dart';
class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
        title:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Good Day for Shopping",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: TColors.grey)),
          Text("Yuvaraj Dekhane",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: TColors.grey)),
        ]),
        actions: [
          TCardCounterIcon(onPressed:(){},iconColor:TColors.light,)
        ]);
  }
}
