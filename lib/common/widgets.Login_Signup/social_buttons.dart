import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class TSocialButtons extends StatelessWidget {
  const TSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: 30,
                height: 30,
                image: AssetImage("assets/logos/googleLogo.png"))),
      ),
      SizedBox(width: 15),
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: 30,
                height: 30,
                image: AssetImage("assets/logos/facebookLogo1.png"))),
      ),
    ]);
  }
}
