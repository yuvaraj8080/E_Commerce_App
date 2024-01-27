import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/halpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
     this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
     this.width = 60,
     this.height = 60,
    this.padding = 16
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height, padding;


  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,height:height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor?? (THelperFunction.isDarkMode(context)? TColors.black : TColors.white),
          borderRadius: BorderRadius.circular(100),
        ),
        child:Image(
          fit:fit,
          image: isNetworkImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color:overlayColor,

        )
    );
  }
}
