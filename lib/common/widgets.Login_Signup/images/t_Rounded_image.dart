import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';


class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUlr,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = TColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = 16,
  });

  final double? width, height;
  final String imageUlr;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: Container(
          width:width,
          height:height,
          padding: padding,
          decoration:
          BoxDecoration(border:border,color:backgroundColor,borderRadius: BorderRadius.circular(borderRadius)),
          child: ClipRRect(
              borderRadius: applyImageRadius? BorderRadius.circular(borderRadius): BorderRadius.zero,
              child:  Image(fit: fit,image:isNetworkImage? NetworkImage(imageUlr):AssetImage(imageUlr)as ImageProvider))),
    );
  }
}
