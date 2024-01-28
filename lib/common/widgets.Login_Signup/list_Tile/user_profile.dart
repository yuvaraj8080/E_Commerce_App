import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../images/t_circular_image.dart';

class TUserProfileTile extends StatelessWidget {
   TUserProfileTile({
    super.key, required this.onPressed,
  });

   final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(image: "assets/user/UserImge.png"),
      title: Text("YUVARAJ DEKHANE",style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
      trailing: IconButton(onPressed:onPressed, icon: const Icon(Iconsax.edit, color: Colors.white)),
      subtitle: Text("yuvarajdekhane8080@gmail.com",style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
    );
  }
}
